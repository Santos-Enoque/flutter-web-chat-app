import 'dart:async';
import 'package:chat_app/helper/constants.dart';
import 'package:chat_app/models/user.dart';
import 'package:chat_app/services/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Status { Uninitialized, Authenticated, Authenticating, Unauthenticated }

class AuthProvider with ChangeNotifier {
  User _user;
  Status _status = Status.Uninitialized;
  UserServices _userServices = UserServices();

  UserModel _userModel;
  GoogleSignIn _googleSignIn = GoogleSignIn();

//  getter
  UserModel get userModel => _userModel;
  Status get status => _status;
  User get user => _user;

  AuthProvider.init() {
    _fireSetUp();
  }

  _fireSetUp() async {
    await initialization.then((value) {
      auth.authStateChanges().listen(_onStateChanged);
    });
  }

  Future<Map<String, dynamic>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await auth.signInWithCredential(credential).then((userCredentials) async {
        _user = userCredentials.user;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString("id", _user.uid);
        if (!await _userServices.doesUserExist(_user.uid)) {
          _userServices.createUser(
              id: _user.uid, name: _user.displayName, photo: _user.photoURL);
          await initializeUserModel();
        } else {
          await initializeUserModel();
        }
      });
      return {'success': true, 'message': 'success'};
    } catch (e) {
      return {'success': false, 'message': e.toString()};
    }
  }

  Future<bool> initializeUserModel() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String _userId = preferences.getString('id');
    _userModel = await _userServices.getUserById(_userId);
    notifyListeners();
    if (_userModel == null) {
      return false;
    } else {
      return true;
    }
  }

  Future signOut() async {
    auth.signOut();
    _status = Status.Unauthenticated;
    notifyListeners();
    return Future.delayed(Duration.zero);
  }

  _onStateChanged(User firebaseUser) async {
    if (firebaseUser == null) {
      _status = Status.Unauthenticated;
      notifyListeners();
    } else {
      _user = firebaseUser;
      initializeUserModel();
      Future.delayed(const Duration(seconds: 2), () {
        _status = Status.Authenticated;
        notifyListeners();
      });
    }
  }
}

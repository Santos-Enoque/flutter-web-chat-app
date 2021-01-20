import 'package:chat_app/models/user.dart';
import 'package:chat_app/services/user.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  List<UserModel> users = [];
  UserServices _userServices = UserServices();

  UserProvider.init() {
    _getUsers();
  }

  _getUsers() async {
    users = await _userServices.getAll();
    notifyListeners();
  }
}

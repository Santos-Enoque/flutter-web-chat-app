import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  bool isLoading = false;

  changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}

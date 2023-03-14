import 'package:flutter/material.dart';

class ItemsProvider extends ChangeNotifier {
  int _favorite = 0;
  int getFavorite() {
    return _favorite;
  }

  void updateFavorite() {
    _favorite++;
    notifyListeners();
  }
}

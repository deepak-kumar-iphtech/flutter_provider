import 'package:flutter/material.dart';

class ItemProvider extends ChangeNotifier {
  List<String> items = [];
  void addItem(String item) {
    items.add(item);
    notifyListeners();
  }

  void removeItem(int index) {
    items.removeAt(index);
    notifyListeners();
  }
}

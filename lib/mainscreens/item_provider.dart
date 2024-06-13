import 'dart:collection';

import 'package:flutter/material.dart';

class ItemProvider extends ChangeNotifier {
  List<String> items = [];
  void addInList() {
    String item = items.last;
    items.add(item);
    notifyListeners();
  }
}

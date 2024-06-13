import 'package:flutter/material.dart';

class NumberList extends ChangeNotifier {
  List<int> numbers = [1, 2, 3, 4];

  void addNumbers() {
    int num = numbers.last;
    numbers.add(num + 1);
    notifyListeners();
  }

  void subNumber() {
    numbers.removeLast();
    notifyListeners();
  }
}

class NumberList2 extends ChangeNotifier {
  int counter = 0;
  void add() {
    counter++;
    notifyListeners();
  }

  void sub() {
    counter--;
    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';

class CounterPrivider extends ChangeNotifier {
  List<Map<String, dynamic>> _addData = [];
  void addTodo(Map<String, dynamic> data) {
    _addData.add(data);
  }

  List<Map<String, dynamic>> get mData => _addData;

  int _counter = 0;
  int getCount() {
    return _counter;
  }

  void setCountVal(int counter) {
    _counter = counter;
    notifyListeners();
  }

  int getCountVal() {
    return _counter;
  }

  void increament() {
    _counter++;
    notifyListeners();
  }

  void decreament() {
    if (_counter > 0) {
      _counter--;
      notifyListeners();
    }
  }
}

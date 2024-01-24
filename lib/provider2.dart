import 'package:flutter/foundation.dart';

class MyProvider extends ChangeNotifier {
  int _Count = 0;
  void increament() {
    _Count++;
    notifyListeners();
  }

  void decreamebt() {
    _Count--;
    notifyListeners();
  }
}

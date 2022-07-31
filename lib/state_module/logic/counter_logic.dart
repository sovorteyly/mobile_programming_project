import 'package:flutter/foundation.dart';

class CounterLogic extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void decrease() {
    _counter -= 1;
    notifyListeners();
  }

  void increase() {
    _counter += 1;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:test_exercise/enums/states/notifier_states.dart';


class BaseProvider with ChangeNotifier {
  NotifierState _state = NotifierState.initial;

  NotifierState get state => _state;

  void setNotifier(NotifierState state) {
    _state = state;
    notifyListeners();
  }
}

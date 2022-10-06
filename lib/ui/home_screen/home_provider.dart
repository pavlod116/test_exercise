
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_exercise/enums/states/notifier_states.dart';
import 'package:test_exercise/providers/base_provider.dart';

class HomeProvider extends BaseProvider {
  Future init(BuildContext context) async {
    setNotifier(NotifierState.loading);
    Timer(
      const Duration(seconds: 1),
    () => print('Timer finished'),
    );
  }
}
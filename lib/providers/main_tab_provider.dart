import 'package:flutter/material.dart';
import 'package:test_exercise/constants/app_images.dart';
import 'package:test_exercise/ui/main_tabs/history/history_tab.dart';
import 'package:test_exercise/ui/main_tabs/home/home_tab.dart';
import 'package:test_exercise/ui/main_tabs/map/map_tab.dart';
import 'package:test_exercise/ui/main_tabs/other/other_tab.dart';
import 'package:test_exercise/ui/main_tabs/qr/qr_view.dart';

class MainTabViewModel with ChangeNotifier {
  int _childIndex = 0;

  int get childIndex => _childIndex;

  final List<Widget> children = <Widget>[
    const HomeTab(),
    const HistoryTab(),
    const MapTab(),
    const OtherTab(),
  ];

  final iconList = <String, String>{
    "Главная": AppImages.house,
    "История": AppImages.history,
    "Карта": AppImages.map,
    "Еще": AppImages.more
  };

  void setChildIndex(int tabIndex) {
    _childIndex = tabIndex;
    notifyListeners();
  }

  Widget getTab() => children[childIndex];
}

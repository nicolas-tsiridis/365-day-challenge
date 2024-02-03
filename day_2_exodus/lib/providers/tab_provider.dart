import 'package:flutter/material.dart';

class TabProvider extends ChangeNotifier {
  int _pageIndex = 0;
  int get pageIndex => _pageIndex;
  bool _showingSideBar = true;
  bool get showingSideBar => _showingSideBar;

  void setPage(int i) {
    _pageIndex = i;
    debugPrint("setting page to $i");
    notifyListeners();
  }

  void toggleSideBarVisibility() {
    _showingSideBar = !_showingSideBar;
    notifyListeners();
  }
}

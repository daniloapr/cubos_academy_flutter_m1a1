import 'dart:async';

import 'package:aula01/navigation/sailor_routes.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/services.dart';

class GlobalBloc extends BlocBase {
  PageEnum _currentPage = PageEnum.intro;
  final _pagesList = PageEnum.values;
  int get lastPageIndex => _pagesList.length - 1;

  void navigateForward() {
    final index = _currentPage.index;
    if (index < lastPageIndex) {
      _currentPage = _pagesList[index + 1];
      SailorRoutes.navigate(page: _currentPage);
    }
  }

  void navigateBackwards() {
    final index = _currentPage.index;
    if (index != 0) {
      _currentPage = _pagesList[index - 1];
      SailorRoutes.pop();
    }
  }

  bool allowKeyPress = true;

  void handleKeyEvent(RawKeyEvent event) {
    // if (allowKeyPress) {
    //   if (event.isKeyPressed(LogicalKeyboardKey.arrowRight) ||
    //       event.logicalKey == LogicalKeyboardKey.space) {
    //     navigateForward();
    //     print('navigate: Forward');
    //     onKeyHandled();
    //   } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
    //     navigateBackwards();
    //     print('navigate: Back');
    //     onKeyHandled();
    //   }
    // }
  }

  void onKeyHandled() {
    allowKeyPress = false;
    Future.delayed(Duration(milliseconds: 200), () {
      allowKeyPress = true;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}

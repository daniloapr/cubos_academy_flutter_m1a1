import 'package:aula01/pages/content_page.dart';
import 'package:aula01/pages/intro_page.dart';
import 'package:aula01/pages/what_is_flutter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _pageController = PageController(initialPage: 0);
  final _focusNode = FocusNode();
  bool _allowKeyPress = true;
  int _currentPage = 0;

  final _duration = Duration(milliseconds: 300);
  final _curve = Curves.easeInOut;

  //update this lasPage variable on adding or removing any page.
  final int _lastPage = 2;

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  void _handleKeyboardEvent(RawKeyEvent event) {
    print('_handleKeyboardEvent');
    if (_allowKeyPress) {
      if (event.isKeyPressed(LogicalKeyboardKey.arrowRight) ||
          event.logicalKey == LogicalKeyboardKey.space) {
        _navigateForward();
      } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
        _navigateBackwards();
      }
      onKeyHandled();
    }
  }

  void _navigateForward() {
    if (_currentPage < _lastPage) {
      setState(() {
        _currentPage++;
      });
      _pageController.animateToPage(_currentPage,
          duration: _duration, curve: _curve);
    }
  }

  void _navigateBackwards() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
      });
      _pageController.animateToPage(_currentPage,
          duration: _duration, curve: _curve);
    }
  }

  void onKeyHandled() {
    _allowKeyPress = false;
    //debounce delay: prevents multiple actions for one single key touch
    Future.delayed(Duration(milliseconds: 200), () {
      _allowKeyPress = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Start");
    // FocusScope.of(context).requestFocus(_focusNode);
    _focusNode.requestFocus();
    return RawKeyboardListener(
      focusNode: _focusNode,
      onKey: _handleKeyboardEvent,
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            IntroPage(),
            ContentPage(),
            WhatIsFlutterPage(),
          ],
        ),
      ),
    );
  }
}

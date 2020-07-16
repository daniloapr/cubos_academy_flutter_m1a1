import 'package:aula01/res/colors.dart';
import 'package:flutter/material.dart';

class TopicTitle extends StatelessWidget {
  final String text;

  TopicTitle({Key key, @required this.text}) : super(key: key) {
    assert(text != null, 'TopicTitleExeption: text == null');
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 80,
        fontWeight: FontWeight.w600,
        color: AppColors.pink,
      ),
    );
  }
}

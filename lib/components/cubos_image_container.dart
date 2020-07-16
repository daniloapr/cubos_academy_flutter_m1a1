import 'package:aula01/res/colors.dart';
import 'package:aula01/res/images.dart';
import 'package:flutter/material.dart';

class CubosImageContainer extends StatelessWidget {
  final Widget child;
  final String imagePath;
  final _marginTop = 100.0;
  final _marginLeft = 50.0;

  const CubosImageContainer({
    Key key,
    @required this.child,
    @required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: AppColors.black,
        image: DecorationImage(
          image: AssetImage(Images.crossBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _logo(),
          Row(
            children: <Widget>[
              Image.asset(imagePath, fit: BoxFit.contain),
              _content(),
            ],
          )
        ],
      ),
    ));
  }

  Widget _logo() {
    return Positioned(
      top: 10,
      right: 30,
      child: Image.asset(Images.logo),
      height: 100,
    );
  }

  Widget _content() {
    return Padding(
      padding: EdgeInsets.only(
        top: _marginTop,
        left: _marginLeft,
      ),
      child: child ?? Container(),
    );
  }
}

import 'package:aula01/res/colors.dart';
import 'package:aula01/res/images.dart';
import 'package:flutter/material.dart';

class DarkContainer extends StatelessWidget {
  final Widget child;
  final ignorePadding;

  const DarkContainer({Key key, this.child, this.ignorePadding = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final _width = MediaQuery.of(context).size.width;
    final _marginTop = 100.0;
    final _marginLeft = 100.0;
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
            Positioned(
              top: 10,
              right: 30,
              child: Image.asset(Images.logo),
              height: 100,
            ),
            Padding(
                padding: ignorePadding
                    ? EdgeInsets.all(0)
                    : EdgeInsets.only(top: _marginTop, left: _marginLeft),
                child: child ?? Container())
          ],
        ),
      ),
    );
  }
}

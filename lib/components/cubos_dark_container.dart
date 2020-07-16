import 'package:aula01/components/main_title.dart';
import 'package:aula01/res/colors.dart';
import 'package:aula01/res/images.dart';
import 'package:flutter/material.dart';

class CubosDarkContainer extends StatelessWidget {
  final Widget child;
  final String text;

  const CubosDarkContainer({Key key, this.child, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    //triangle size
    final size = (height <= width) ? height * 0.46 : width * 0.46;

    final _margin = width / 8.0;

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
          children: <Widget>[
            CustomPaint(
              size: Size(size, size),
              painter: _BlueTrianglePainter(),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CustomPaint(
                size: Size(size, size),
                painter: _PinkTrianglePainter(),
              ),
            ),
            Positioned(
              top: 10,
              right: 30,
              child: Image.asset(Images.logo),
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.all(_margin),
              child: Stack(
                children: <Widget>[
                  if (text != null) Center(child: MainTitle(text: text)),
                  if (child != null) child,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _BlueTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double _blueSize = size.height * (0.93); //height == width

    final _whitePath = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(0, size.height)
      ..lineTo(0, 0);

    final _bluePath = Path()
      ..moveTo(0, 0)
      ..lineTo(_blueSize, 0)
      ..lineTo(0, _blueSize)
      ..lineTo(0, 0);

    final _whitepaint = Paint()
      ..color = Colors.white
      ..isAntiAlias = true;

    final _bluePaint = Paint()
      ..color = AppColors.blue
      ..isAntiAlias = true;

    canvas.drawPath(_whitePath, _whitepaint);
    canvas.drawPath(_bluePath, _bluePaint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}

class _PinkTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double _size = size.height;
    final double _pinkSize = size.height * (1 - 0.93); //height == width

    final _whitePath = Path()
      ..moveTo(_size, _size)
      ..lineTo(_size, 0)
      ..lineTo(0, _size)
      ..lineTo(_size, _size);

    final _pinkPath = Path()
      ..moveTo(_size, _size)
      ..lineTo(_size, _pinkSize)
      ..lineTo(_pinkSize, _size)
      ..lineTo(_size, _size);

    final _whitepaint = Paint()
      ..color = Colors.white
      ..isAntiAlias = true;

    final _bluePaint = Paint()
      ..color = AppColors.pink
      ..isAntiAlias = true;

    canvas.drawPath(_whitePath, _whitepaint);
    canvas.drawPath(_pinkPath, _bluePaint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}

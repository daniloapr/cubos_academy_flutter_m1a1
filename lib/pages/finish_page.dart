import 'package:aula01/components/global_widget.dart';
import 'package:aula01/res/colors.dart';
import 'package:aula01/res/images.dart';
import 'package:flutter/material.dart';

class FinishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalWidget(
      child: Container(
        color: AppColors.black,
        child: Stack(
          children: <Widget>[
            Center(
                child: Image.asset(
              Images.logo,
              height: 200,
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  Images.footer,
                  height: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

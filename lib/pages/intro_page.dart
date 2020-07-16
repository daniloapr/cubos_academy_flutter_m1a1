import 'package:aula01/components/cubos_dark_container.dart';
import 'package:aula01/components/main_title.dart';
import 'package:flutter/material.dart';

///Introduction
class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CubosDarkContainer(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MainTitle(
              text: 'Capacitação em Flutter',
            ),
            SizedBox(height: 16),
            Text(
              'Por Danilo Rêgo e João Gouveia',
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

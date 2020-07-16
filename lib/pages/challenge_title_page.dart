import 'package:aula01/components/cubos_dark_container.dart';
import 'package:aula01/components/global_widget.dart';
import 'package:aula01/components/main_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChallengeTitlePage extends StatelessWidget {
  const ChallengeTitlePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidget(
      child: CubosDarkContainer(
        child: Center(
          child: MainTitle(text: "Desafio"),
        ),
      ),
    );
  }
}

import 'package:aula01/components/cubos_image_container.dart';
import 'package:aula01/components/global_widget.dart';
import 'package:aula01/components/topic_list.dart';
import 'package:aula01/res/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidget(
      child: Center(
        child: CubosImageContainer(
          imagePath: Images.notebook,
          child: TopicList(
            title: "Conteúdo",
            subtitle: 'Neste curso, abordaremos os seguintes pontos:',
            list: {
              "O que é o Flutter?": [],
              "Widgets": [],
              "Dart": [],
              "Porque o Flutter?": [],
              "Porque não?": [],
              "Construindo o primeiro app": [],
              "Desafio": []
            },
          ),
        ),
      ),
    );
  }

  final eventName = Strings.title;

  Widget text() {
    return Text('Meu texto');
  }
}

class Strings {
  static const title = "Título";
}

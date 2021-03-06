import 'package:aula01/components/dark_container.dart';
import 'package:aula01/components/global_widget.dart';
import 'package:aula01/components/text_link.dart';
import 'package:aula01/components/topic_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AllAboutWidgetsPage extends StatelessWidget {
  const AllAboutWidgetsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidget(
      child: DarkContainer(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TopicList(title: "It's all about Widgets", list: {
          "Biblioteca completa dos temas Material e Cupertino Design": []
        }),
        SizedBox(height: 120),
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Row(children: [
            Text("Material Design: ",
                style: TextStyle(color: Colors.white, fontSize: 40)),
            TextLink(
                text: "Material Components Widgets",
                link:
                    "https://flutter.dev/docs/development/ui/widgets/material")
          ]),
          SizedBox(height: 16),
          Row(children: [
            Text(
              "Cupertino Design: ",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            TextLink(
                text: "Cupertino Components Widgets",
                link:
                    "https://flutter.dev/docs/development/ui/widgets/cupertino")
          ]),
          SizedBox(height: 16),
          Row(children: [
            Text(
              "Widget of the week: ",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            TextLink(
                text: "Youtube playlist",
                link:
                    "https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG")
          ]),
        ])
      ])),
    );
  }
}

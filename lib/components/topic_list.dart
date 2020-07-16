import 'package:aula01/components/topic_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'bullet_list.dart';

class TopicList extends StatelessWidget {
  final String title;
  final String subtitle;
  final Map<String, List<String>> list;

  const TopicList({@required this.title, @required this.list, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: getColumnChildren(),
          ),
        )
      ],
    );
  }

  List<Widget> getColumnChildren() {
    final List<Widget> widgetList = [
      TopicTitle(text: title),
      if (subtitle != null)
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            subtitle,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      SizedBox(height: 32),
    ];
    widgetList.add(BulletList(list));
    return widgetList;
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuAction extends StatelessWidget {
  const ResponsiveMenuAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.smallerThan(name: TABLET)],
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search))),
        SizedBox(
          width: 4,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        SizedBox(
          width: 4,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.send)),
        SizedBox(
          width: 4,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
        SizedBox(
          width: 16,
        ),
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRrae6KNxlVhxDOo_mZEUx7aN1LVBGyBszAA&usqp=CAU'),
        )
      ],
    );
  }
}

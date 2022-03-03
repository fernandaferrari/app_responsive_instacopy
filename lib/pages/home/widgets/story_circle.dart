import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.green],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 62,
            width: 62,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black87),
            child: const CircleAvatar(
              radius: 27,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRrae6KNxlVhxDOo_mZEUx7aN1LVBGyBszAA&usqp=CAU'),
            ),
            alignment: Alignment.center,
          ),
        ),
        const Text(
          'juliusImBatma',
          style: TextStyle(fontSize: 11, color: Colors.white),
        )
      ],
    );
  }
}

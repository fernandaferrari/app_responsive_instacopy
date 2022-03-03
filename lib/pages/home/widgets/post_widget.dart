import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRrae6KNxlVhxDOo_mZEUx7aN1LVBGyBszAA&usqp=CAU'),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  'juliusImBatma',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
              GestureDetector(
                child: const Icon(
                  Icons.more_horiz_sharp,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRrae6KNxlVhxDOo_mZEUx7aN1LVBGyBszAA&usqp=CAU',
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                color: Colors.white,
                onPressed: () {},
              ),
              const SizedBox(width: 4),
              IconButton(
                icon: const Icon(Icons.messenger_outline),
                color: Colors.white,
                onPressed: () {},
              ),
              const SizedBox(width: 4),
              IconButton(
                icon: const Icon(Icons.send),
                color: Colors.white,
                onPressed: () {},
              ),
              Expanded(child: Container()),
              IconButton(
                icon: const Icon(Icons.bookmark_border),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Curtido por fernandaf e outras 300 pessoas',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 8),
              Text('HÀ 1 HORA',
                  style: TextStyle(fontSize: 10, color: Colors.white))
            ],
          ),
        )
      ],
    );
  }
}

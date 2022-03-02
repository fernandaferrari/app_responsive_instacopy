import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1000),
        child: Row(
          children: [
            Text(
              "Flutter",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'Billabong',
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}

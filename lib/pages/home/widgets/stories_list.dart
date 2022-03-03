import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'widgets.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(vertical: mobile ? 15 : 35),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: 16,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (_, i) {
          return const StoryCircle();
        },
      ),
    );
  }
}

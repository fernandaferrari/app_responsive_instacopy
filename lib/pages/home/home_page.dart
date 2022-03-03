import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: const PreferredSize(
          child: ResponsiveAppBar(),
          preferredSize: Size(double.infinity, 52),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Row(
              children: [
                Expanded(
                  child: ListView(
                    children: const [
                      StoriesList(),
                      PostWidget(),
                      PostWidget(),
                    ],
                  ),
                ),
                const RightPanel(),
              ],
            ),
          ),
        ));
  }
}

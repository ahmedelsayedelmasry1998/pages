import 'package:flutter/material.dart';

import 'package:twopages/widgets/search.dart';
import 'package:twopages/widgets/trandingVerticle.dart';

class InfoPage extends StatefulWidget {
  @override
  State<InfoPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f1f1),
      body: SingleChildScrollView(
        child: Column(children: [
          Search(),
          SizedBox(
            height: 16,
          ),
          TrandingVerticle(),
        ]),
      ),
    );
  }
}

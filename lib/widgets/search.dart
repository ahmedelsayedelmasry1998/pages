import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 60,
        ),
        Icon(Icons.search),
        SizedBox(
          width: 18,
        ),
        Container(
          width: 270,
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter A Search Term',
            ),
          ),
        ),
        SizedBox(
          width: 18,
        ),
        Icon(Icons.keyboard_double_arrow_down),
      ],
    );
  }
}

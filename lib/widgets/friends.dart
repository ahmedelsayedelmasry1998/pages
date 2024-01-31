import 'package:flutter/material.dart';
import 'package:twopages/model/friendesPicturs.dart';

class Friends extends StatefulWidget {
  @override
  State<Friends> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: friendsPictures.length,
          itemBuilder: (context, index) => Wrap(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(friendsPictures[index].piciture),
              ),
              SizedBox(
                width: 13,
              ),
            ],
          ),
        ));
  }
}

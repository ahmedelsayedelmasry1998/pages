import 'package:flutter/material.dart';
import 'package:twopages/infoPage.dart';
import 'package:twopages/widgets/catogries.dart';
import 'package:twopages/widgets/friends.dart';
import 'package:twopages/widgets/rowSaperator.dart';
import 'package:twopages/widgets/search.dart';
import 'package:twopages/widgets/tranding.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f1f1),
      body: pages(),
      floatingActionButton: Container(
        margin: EdgeInsets.only(left: 0),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Read'),
            BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarm'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          ]),
    );
  }

  Widget pages() {
    switch (_index) {
      case 0:
        return SingleChildScrollView(
          child: Column(children: [
            Search(),
            SizedBox(
              height: 16,
            ),
            RowMaterial("Tranding Restrunts", "See All (45)"),
            SizedBox(
              height: 16,
            ),
            Tranding(),
            SizedBox(
              height: 16,
            ),
            RowMaterial("Catogary", "See All (95)"),
            SizedBox(
              height: 16,
            ),
            Catogries(),
            SizedBox(
              height: 16,
            ),
            RowMaterial("Friends", "See All (65)"),
            SizedBox(
              height: 10,
            ),
            Friends(),
          ]),
        );
      default:
        return InfoPage();
    }
  }
}

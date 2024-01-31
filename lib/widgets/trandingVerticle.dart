import 'package:flutter/material.dart';
import 'package:twopages/model/trandingModel.dart';

class TrandingVerticle extends StatefulWidget {
  @override
  State<TrandingVerticle> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TrandingVerticle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: trands.length,
          itemBuilder: (contex, index) => Container(
                height: 200,
                width: double.infinity,
                // color: Colors.black,
                child: Column(children: [
                  Container(
                    height: 120,
                    width: 360,
                    child: Stack(children: [
                      Positioned(
                          left: 10,
                          top: 10,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("OPEN"))),
                      Positioned(
                          right: 10,
                          top: 10,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.star),
                                  Text("4.5"),
                                ],
                              ))),
                    ]),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(trands[index].picName),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 80,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(trands[index].name),
                          Container(
                            width: 80,
                            height: 20,
                            child: Text(
                              "India",
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            width: 80,
                            height: 20,
                            child: Text(
                              "139 Km",
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.red, width: 2),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundImage:
                                          AssetImage("images/person1.jfif"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 20,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.red, width: 2),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundImage:
                                          AssetImage("images/person2.jfif"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 40,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.red, width: 2),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundImage:
                                          AssetImage("images/person3.jfif"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 60,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.red, width: 2),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundImage:
                                          AssetImage("images/person4.jfif"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        trands[index].title,
                        textAlign: TextAlign.left,
                      )
                    ]),
                  )
                ]),
              )),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
    );
  }
}

String status1 = 'Status';
String status2 = 'Status';
String status3 = 'Status';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Orders"),
          ),
          body: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Screen2();
                        },
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.grey[900],
                    child: Column(children: [
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 20, 5, 20),
                          child: Container(
                            alignment: Alignment.center,
                            height: 170,
                            child: Text(
                              'Order 1',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                        Image.asset('images/imageSUTT.jpeg', height: 170),
                      ]),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 200,
                            child: Text(status1,
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 20)),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  status1 = 'Declined';
                                },
                              );
                            },
                            iconSize: 40,
                            icon: Icon(Icons.cancel),
                            color: Color.fromARGB(255, 97, 45, 255),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  status1 = 'Accepted';
                                },
                              );
                            },
                            iconSize: 40,
                            icon: Icon(Icons.check_circle),
                            color: Color.fromARGB(255, 97, 45, 255),
                          )
                        ],
                      )
                    ]),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Screen2();
                        },
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Card(
                      color: Colors.grey[900],
                      child: Column(children: [
                        Row(children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 20, 5, 20),
                            child: Container(
                              alignment: Alignment.center,
                              height: 170,
                              child: Text(
                                'Order 2',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ),
                          Image.asset('images/imageSUTT.jpeg', height: 170),
                        ]),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 200,
                              child: Text(status2,
                                  style: TextStyle(
                                      color: Colors.grey[500], fontSize: 20)),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(
                                  () {
                                    status2 = 'Declined';
                                  },
                                );
                              },
                              iconSize: 40,
                              icon: Icon(Icons.cancel),
                              color: Color.fromARGB(255, 97, 45, 255),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(
                                  () {
                                    status2 = 'Accepted';
                                  },
                                );
                              },
                              iconSize: 40,
                              icon: Icon(Icons.check_circle),
                              color: Color.fromARGB(255, 97, 45, 255),
                            )
                          ],
                        )
                      ]),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Screen2();
                        },
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.grey[900],
                    child: Column(children: [
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 20, 5, 20),
                          child: Container(
                            alignment: Alignment.center,
                            height: 170,
                            child: Text(
                              'Order 3',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                        Image.asset('images/imageSUTT.jpeg', height: 170),
                      ]),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 200,
                            child: Text(status3,
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 20)),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  status3 = 'Declined';
                                },
                              );
                            },
                            iconSize: 40,
                            icon: Icon(Icons.cancel),
                            color: Color.fromARGB(255, 97, 45, 255),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  status3 = 'Accepted';
                                },
                              );
                            },
                            iconSize: 40,
                            icon: Icon(Icons.check_circle),
                            color: Color.fromARGB(255, 97, 45, 255),
                          )
                        ],
                      )
                    ]),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Details"),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: CircularPercentIndicator(
            radius: 100,
            percent: 0.7,
            lineWidth: 10,
            progressColor: Color.fromARGB(255, 97, 45, 255),
            animation: true,
            animationDuration: 1500,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '70%',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Progress',
                  style: TextStyle(
                      color: Color.fromARGB(255, 97, 45, 255),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

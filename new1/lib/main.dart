// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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

int colour1 = 0;
int colour2 = 0;
int colour3 = 0;

int icons1 = 1;
int icons2 = 1;
int icons3 = 1;

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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Image.asset('images/imageSUTT.jpeg',
                                  height: 170)),
                        ]),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 200,
                              child: Text(status1,
                                  style: TextStyle(
                                      color: (colour1 == 0)
                                          ? Colors.grey[500]
                                          : ((colour1 == 2)
                                              ? Colors.green
                                              : Colors.red),
                                      fontSize: 20)),
                            ),
                            IconButton(
                              onPressed: (icons1 == 1)
                                  ? () {
                                      setState(
                                        () {
                                          status1 = 'Declined';
                                          colour1 = 1;
                                          icons1 = 0;
                                        },
                                      );
                                    }
                                  : null,
                              iconSize: 40,
                              icon: Icon(Icons.cancel_outlined),
                              color: Colors.grey[500],
                            ),
                            IconButton(
                              onPressed: (icons1 == 1)
                                  ? () {
                                      setState(
                                        () {
                                          status1 = 'Accepted';
                                          colour1 = 2;
                                          icons1 = 0;
                                        },
                                      );
                                    }
                                  : null,
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
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
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
                            ClipRRect(
                                borderRadius: BorderRadius.circular(200),
                                child: Image.asset('images/imageSUTT.jpeg',
                                    height: 170)),
                          ]),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 200,
                                child: Text(status2,
                                    style: TextStyle(
                                        color: (colour2 == 0)
                                            ? Colors.grey[500]
                                            : ((colour2 == 2)
                                                ? Colors.green
                                                : Colors.red),
                                        fontSize: 20)),
                              ),
                              IconButton(
                                onPressed: (icons2 == 1)
                                    ? () {
                                        setState(
                                          () {
                                            status2 = 'Declined';
                                            colour2 = 1;
                                            icons2 = 0;
                                          },
                                        );
                                      }
                                    : null,
                                iconSize: 40,
                                icon: Icon(Icons.cancel_outlined),
                                color: Colors.grey[500],
                              ),
                              IconButton(
                                onPressed: (icons2 == 1)
                                    ? () {
                                        setState(
                                          () {
                                            status2 = 'Accepted';
                                            colour2 = 2;
                                            icons2 = 0;
                                          },
                                        );
                                      }
                                    : null,
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Image.asset('images/imageSUTT.jpeg',
                                  height: 170)),
                        ]),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 200,
                              child: Text(status3,
                                  style: TextStyle(
                                      color: (colour3 == 0)
                                          ? Colors.grey[500]
                                          : ((colour3 == 2)
                                              ? Colors.green
                                              : Colors.red),
                                      fontSize: 20)),
                            ),
                            IconButton(
                              onPressed: (icons3 == 1)
                                  ? () {
                                      setState(
                                        () {
                                          status3 = 'Declined';
                                          colour3 = 1;
                                          icons3 = 0;
                                        },
                                      );
                                    }
                                  : null,
                              iconSize: 40,
                              icon: Icon(Icons.cancel_outlined),
                              color: Colors.grey[500],
                            ),
                            IconButton(
                              onPressed: (icons3 == 1)
                                  ? () {
                                      setState(
                                        () {
                                          status3 = 'Accepted';
                                          colour3 = 2;
                                          icons3 = 0;
                                        },
                                      );
                                    }
                                  : null,
                              iconSize: 40,
                              icon: Icon(Icons.check_circle),
                              color: Color.fromARGB(255, 97, 45, 255),
                            )
                          ],
                        )
                      ]),
                    ),
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
            linearGradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 99, 182, 255),
                Color.fromARGB(255, 65, 23, 192)
              ],
            ),
            radius: 100,
            percent: 0.7,
            lineWidth: 20,
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
                      color: Color.fromARGB(255, 98, 101, 236),
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

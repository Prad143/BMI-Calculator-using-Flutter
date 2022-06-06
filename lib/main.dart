import 'second_page.dart';
import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ), // use MaterialApp
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

double height = 150;
double weight = 75;
double age = 30;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 0, 24),
      appBar: AppBar(
        title: Center(child: Text("BMI Calculator")),
        backgroundColor: Colors.red,
      ),
      body: Stack(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Text("Hi Welcome to My App"),

          Positioned(
            bottom: 500,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(204, 44, 49, 53),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0)),
              ),
              height: 200,
              width: 350,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text("HEIGHT\n    ${height.round()}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Color.fromARGB(255, 255, 255, 255))),
                  ),
                  Slider(
                    activeColor: Color.fromARGB(255, 199, 30, 18),
                    inactiveColor: Colors.black,
                    thumbColor: Colors.white,
                    value: height,
                    max: 200,
                    min: 100,
                    onChanged: (newValue) {
                      setState(() {
                        height = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 170,
            left: 20,
            child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(204, 44, 49, 53),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0)),
                ),
                height: 250,
                width: 170,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 40.0, left: 20, right: 20, bottom: 40),
                      child: Text("WEIGHT\n      ${weight.round()}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              color: Color.fromARGB(255, 255, 255, 255))),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          onPressed: _weight_inc,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              side: BorderSide(color: Colors.red)),
                          child: Text('+',
                              style: TextStyle(
                                  fontSize: 50.0,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                        FlatButton(
                          onPressed: _weight_dec,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              side: BorderSide(color: Colors.red)),
                          child: Text('-',
                              style: TextStyle(
                                  fontSize: 50.0,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ],
                    ),
                  ],
                )),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(204, 247, 33, 33),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondRoute()),
                          );
                        },
                        child: Text('CALCULATE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Color.fromARGB(255, 255, 255, 255))),
                        textColor: Color.fromARGB(207, 4, 7, 201),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Positioned(
          //   top: 20,
          //   left: 20,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Color.fromARGB(204, 44, 49, 53),
          //       borderRadius: BorderRadius.only(
          //           topRight: Radius.circular(40.0),
          //           bottomRight: Radius.circular(40.0),
          //           topLeft: Radius.circular(40.0),
          //           bottomLeft: Radius.circular(40.0)),
          //     ),
          //     height: 200,
          //     width: 170,
          //     child: Column(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(20.0),
          //           child: Text("MALE",
          //               style: TextStyle(
          //                   color: Color.fromARGB(
          //                     255,
          //                     255,
          //                     255,
          //                     255,
          //                   ),
          //                   fontSize: 30.0,
          //                   fontWeight: FontWeight.bold)),
          //         ),
          //         Icon(Icons.male_rounded, color: Colors.blue, size: 80)
          //       ],
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: 20,
          //   right: 20,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Color.fromARGB(204, 44, 49, 53),
          //       borderRadius: BorderRadius.only(
          //           topRight: Radius.circular(40.0),
          //           bottomRight: Radius.circular(40.0),
          //           topLeft: Radius.circular(40.0),
          //           bottomLeft: Radius.circular(40.0)),
          //     ),
          //     height: 200,
          //     width: 170,
          //     child: Column(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(20.0),
          //           child: Text("FEMALE",
          //               style: TextStyle(
          //                   fontSize: 30.0,
          //                   fontWeight: FontWeight.bold,
          //                   color: Color.fromARGB(255, 255, 255, 255))),
          //         ),
          //         Icon(Icons.female_rounded, color: Colors.pink, size: 80)
          //       ],
          //     ),
          //   ),
          // ),
          Positioned(
            bottom: 170,
            right: 20,
            child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(204, 44, 49, 53),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0)),
                ),
                height: 250,
                width: 170,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Text("AGE\n  ${age.round()}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              color: Color.fromARGB(255, 255, 255, 255))),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          onPressed: _age_inc,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              side: BorderSide(color: Colors.red)),
                          child: Text('+',
                              style: TextStyle(
                                  fontSize: 50.0,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                        FlatButton(
                          onPressed: _age_dec,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              side: BorderSide(color: Colors.red)),
                          child: Text('-',
                              style: TextStyle(
                                  fontSize: 50.0,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  void _weight_inc() {
    setState(() {
      weight = weight + 1;
    });
  }

  void _weight_dec() {
    setState(() {
      weight = weight - 1;
    });
  }

  void _age_inc() {
    setState(() {
      age = age + 1;
    });
  }

  void _age_dec() {
    setState(() {
      age = age - 1;
    });
  }
}

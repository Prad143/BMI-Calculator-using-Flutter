import 'package:flutter/material.dart';
import 'main.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    double bmi = (height / (weight * weight));
    return
//     Scaffold(
//       body: SafeArea(
//         child: DefaultTabController(
//           length: 6,
//           child: Column(
//             children: <Widget>[
//               ButtonsTabBar(
//                 backgroundColor: Colors.red,
//                 unselectedBackgroundColor: Colors.grey[300],
//                 unselectedLabelStyle: TextStyle(color: Colors.black),
//                 labelStyle:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//                 tabs: [
//                   Tab(
//                     icon: Icon(Icons.directions_car),
//                     text: "car",
//                   ),
//                   Tab(
//                     icon: Icon(Icons.directions_transit),
//                     text: "transit",
//                   ),
//                   Tab(icon: Icon(Icons.directions_bike)),
//                   Tab(icon: Icon(Icons.directions_car)),
//                   Tab(icon: Icon(Icons.directions_transit)),
//                   Tab(icon: Icon(Icons.directions_bike)),
//                 ],
//               ),
//               Expanded(
//                 child: TabBarView(
//                   children: <Widget>[
//                     Center(
//                       child: Icon(Icons.directions_car),
//                     ),
//                     Center(
//                       child: Icon(Icons.directions_transit),
//                     ),
//                     Center(
//                       child: Icon(Icons.directions_bike),
//                     ),
//                     Center(
//                       child: Icon(Icons.directions_car),
//                     ),
//                     Center(
//                       child: Icon(Icons.directions_transit),
//                     ),
//                     Center(
//                       child: Icon(Icons.directions_bike),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

        Scaffold(
            backgroundColor: Color.fromARGB(255, 8, 0, 24),
            appBar: AppBar(
                backgroundColor: Colors.red,
                title: Text('              BMI Calculator')),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if ((weight / (height * height)) * 10000 < 18.5) ...[
                      Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(204, 44, 49, 53),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.0),
                                bottomRight: Radius.circular(40.0),
                                topLeft: Radius.circular(40.0),
                                bottomLeft: Radius.circular(40.0)),
                          ),
                          height: 700,
                          width: 300,
                          child: Column(
                            children: [
                              Container(
                                height: 225,
                                width: 300,
                                child: Center(
                                    child: Text("UNDERWEIGHT",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 30,
                                        ))),
                              ),
                              Container(
                                height: 100,
                                width: 300,
                                child: Center(
                                    child: Text("BMI:",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 50))),
                              ),
                              Container(
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, bottom: 150),
                                  child: Text(
                                      "${((weight / (height * height) * 10000).toStringAsFixed(2))}",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 60)),
                                )),
                              ),
                              Container(
                                width: 250,
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                      "Sorry to say that you are underweight. Try bulking up on your calories while following a healthy diet.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 20)),
                                )),
                              ),
                            ],
                          ))
                    ] else if ((weight / (height * height)) * 10000 < 25.0) ...[
                      Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(204, 44, 49, 53),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.0),
                                bottomRight: Radius.circular(40.0),
                                topLeft: Radius.circular(40.0),
                                bottomLeft: Radius.circular(40.0)),
                          ),
                          height: 700,
                          width: 300,
                          child: Column(
                            children: [
                              Container(
                                height: 225,
                                width: 300,
                                child: Center(
                                    child: Text("NORMAL",
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 30,
                                        ))),
                              ),
                              Container(
                                height: 100,
                                width: 300,
                                child: Center(
                                    child: Text("BMI:",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 50))),
                              ),
                              Container(
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, bottom: 150),
                                  child: Text(
                                      "${((weight / (height * height) * 10000).toStringAsFixed(2))}",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 60)),
                                )),
                              ),
                              Container(
                                width: 250,
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                      "HURRAY!. Your weight is in the normal range!!\nKeep leading a healthy lifestyle",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 20)),
                                )),
                              ),
                            ],
                          ))
                    ] else ...[
                      Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(204, 44, 49, 53),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.0),
                                bottomRight: Radius.circular(40.0),
                                topLeft: Radius.circular(40.0),
                                bottomLeft: Radius.circular(40.0)),
                          ),
                          height: 700,
                          width: 300,
                          child: Column(
                            children: [
                              Container(
                                height: 225,
                                width: 300,
                                child: Center(
                                    child: Text("OBESE",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 30,
                                        ))),
                              ),
                              Container(
                                height: 100,
                                width: 300,
                                child: Center(
                                    child: Text("BMI:",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 50))),
                              ),
                              Container(
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, bottom: 150),
                                  child: Text(
                                      "${((weight / (height * height) * 10000).toStringAsFixed(2))}",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 60)),
                                )),
                              ),
                              Container(
                                width: 250,
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                      "Sigh, unfortunately you are overweight. Try exercising more and cutting down on your calories",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 20)),
                                )),
                              ),
                            ],
                          ))
                    ],
                  ]),
            ));
  }
}

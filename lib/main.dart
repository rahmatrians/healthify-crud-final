import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './detail.dart';
import './adddata.dart';
import './makanan_sehat.dart';
import './tentang_kami.dart';
import './info.dart';
import './tips_sehat.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My Store",
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<List> getData() async {
    final response =
        await http.get(Uri.parse("http://10.0.2.2/healthify/getdata.php"));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      // appBar: new AppBar(
      //   backgroundColor: Color(0xff1DBAB5),
      //   title: Text("Healthify"),
      // ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
                color: Color(0xff1DBAB5),
                borderRadius: BorderRadius.circular(10)),
            height: 150,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: new Row(
              children: [
                Image.asset(
                  "images/profilePict.png",
                  height: 70,
                ),
                Padding(padding: EdgeInsets.only(right: 10)),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hai, Armin",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Bagaimana kondusu tubuhmu?",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new MakananList())),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          margin: EdgeInsets.all(10),
                          child: Column(children: [
                            SizedBox(height: 10),
                            Image.asset(
                              "images/profilePict.png",
                              height: 70,
                            ),
                            SizedBox(height: 20),
                            Text("Makanan Sehat"),
                            SizedBox(height: 20),
                          ]),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new TipsList())),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          margin: EdgeInsets.all(10),
                          child: Column(children: [
                            SizedBox(height: 10),
                            Image.asset(
                              "images/profilePict.png",
                              height: 70,
                            ),
                            SizedBox(height: 20),
                            Text("Tips Sehat"),
                            SizedBox(height: 20),
                          ]),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new TentangKami())),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          margin: EdgeInsets.all(10),
                          child: Column(children: [
                            SizedBox(height: 10),
                            Image.asset(
                              "images/profilePict.png",
                              height: 70,
                            ),
                            SizedBox(height: 20),
                            Text("Tentang Kami"),
                            SizedBox(height: 20),
                          ]),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new infoLayanan())),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          margin: EdgeInsets.all(10),
                          child: Column(children: [
                            SizedBox(height: 10),
                            Image.asset(
                              "images/profilePict.png",
                              height: 70,
                            ),
                            SizedBox(height: 20),
                            Text("Info Layanan"),
                            SizedBox(height: 20),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

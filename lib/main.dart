// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var bg = Colors.white;
  static const red = Colors.red;
  static const green = Colors.green;
  static const amber = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: red, // background
                  // foreground
                ),
                onPressed: () {
                  setState(
                    () {
                      bg = red;
                    },
                  );
                },
                child: Text("Red"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: green, // background
                  // foreground
                ),
                onPressed: () {
                  setState(
                    () {
                      bg = green;
                    },
                  );
                },
                child: Text("Green"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: amber, // background
                  // foreground
                ),
                onPressed: () {
                  setState(
                    () {
                      bg = amber;
                    },
                  );
                },
                child: Text("amber"),
              ),
            ],
          ),
        ));
  }
}

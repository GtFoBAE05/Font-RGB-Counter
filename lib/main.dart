import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int font = 0, red = 0, green = 0, blue = 0;
  void onPressed() {
    setState(() {
      font++;
    });
  }

  void redButtonPressed() {
    setState(() {
      if (red >= 255) {
        red = 0;
      } else {
        red += 15;
      }
    });
  }

  void greenButtonPressed() {
    setState(() {
      if (green >= 255) {
        green = 0;
      } else {
        green += 15;
      }
    });
  }

  void blueButtonPressed() {
    setState(() {
      if (blue >= 255) {
        blue = 0;
      } else {
        blue += 15;
      }
    });
  }

  void reset() {
    setState(() {
      font = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Counter font RGB")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(font.toString(),
                    style: TextStyle(
                        fontSize: font.toDouble(),
                        color: Color.fromRGBO(red, green, blue, 1))),
                ElevatedButton(
                    onPressed: onPressed,
                    onLongPress: reset,
                    child: Text("tambah ukuran font")),
                ElevatedButton(
                    onPressed: redButtonPressed,
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(red, 0, 0, 1)),
                    child: Text("Red: " + red.toString())),
                ElevatedButton(
                    onPressed: greenButtonPressed,
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(0, green, 0, 1)),
                    child: Text("Green: " + green.toString())),
                ElevatedButton(
                    onPressed: blueButtonPressed,
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(0, 0, blue, 1)),
                    child: Text("Blue: " + blue.toString())),
              ],
            ),
          )),
    );
  }
}

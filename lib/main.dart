import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Dicey());
}

class Dicey extends StatefulWidget {
  const Dicey({Key? key}) : super(key: key);

  @override
  State<Dicey> createState() => _DiceyState();
}

int leftdicenumber = 1;
int rightdicenumber = 1;

class _DiceyState extends State<Dicey> {
  
void rolldice() {
  setState(() {
    leftdicenumber = Random().nextInt(6) + 1;
    rightdicenumber = Random().nextInt(6) + 1;
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.gamepad,
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
          title: const Text(
            "DICEY",
            style: TextStyle(
              fontFamily: "Pacifico",
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("asset/Dice$leftdicenumber.png"),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("asset/Dice$rightdicenumber.png"),
                )),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            rolldice();
          },
          backgroundColor: Colors.black,
          child: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}

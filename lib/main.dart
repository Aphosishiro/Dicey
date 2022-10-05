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
int roll = 2;

class _DiceyState extends State<Dicey> {
  void rolldice() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
      roll = leftdicenumber + rightdicenumber;
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
            const SizedBox(
            height: 30,
          ),
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
          const SizedBox(
            height: 10,
          ),
          const Text(
            "You rolled",
            style: TextStyle(
              fontFamily: "Pacifico",
              fontSize: 30,
            ),
          ),
          Text(
            "$roll",
            style: const TextStyle(
              fontFamily: "Pacifico",
              fontSize: 50,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 70,
            width: 200,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  elevation: MaterialStateProperty.all(5),
                ),
                onPressed: () {
                  rolldice();
                },
                child: const Text(
                  "ROLL",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
          ),
        ]),
      ),
    );
  }
}

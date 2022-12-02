import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue[800],
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Center(
              child: Text('Ask Me Anything'),
            ),
          ),
          body: eight_ball(),
        )),
  );
}

class eight_ball extends StatefulWidget {
  const eight_ball({Key? key}) : super(key: key);

  @override
  State<eight_ball> createState() => _eight_ballState();
}

class _eight_ballState extends State<eight_ball> {
  int ballnum = 1;
  void change_image() {
    ballnum = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    change_image();
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/ball$ballnum.png'),
                )),
          )
        ],
      ),
    );
  }
}

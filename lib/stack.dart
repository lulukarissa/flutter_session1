import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        padding: const EdgeInsets.only(top: 30),
          alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              color: Colors.red,
              width: 300,
              height: 300,
            ),
            Container(
              color: Colors.yellow,
              width: 250,
              height: 250,
            ),
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            ),
          ],
        )
      )
    );
  }

}
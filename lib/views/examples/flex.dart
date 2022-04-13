import 'package:flutter/material.dart';

class FlexPage extends StatelessWidget {
  const FlexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey,
                alignment: Alignment.center,
                child: const Text('1'),
              ),
            ),
            Expanded(
              flex: 3,
                child: Container(
                  color: Colors.yellow,
                  alignment: Alignment.center,
                  child: const Text('2'),
                ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text('3'),
              ),
            ),
          ],
        ),
    );
  }

}
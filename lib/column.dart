import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
            child: Text('1'),
        ),
            const Text('2'),
            const Text('3'),
            Row(
              children: const [
                Text('R1'),
                SizedBox(width: 10),
                Text('R2'),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('R3'),
                ),
              ],
            )
          ],
        ),
      )
    );
  }

}
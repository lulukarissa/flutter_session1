import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container (
          margin: const EdgeInsets.only(top: 30),
          child: ListView(
            children: const [
              Card(
                child: Text('No. 1'),
              ),
              Card(
                child: Text('No. 2'),
              ),
              Card(
                child: Text('No. 3'),
              ),
              Card(
                child: Text('No. 4'),
              ),
              Card(
                child: Text('No. 5'),
              ),
            ],
          )
        )
    );
  }

}
import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  ListViewBuilderPage({Key? key}) : super(key: key);

  final List months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container (
            margin: const EdgeInsets.only(top: 30),
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: Text(months[index]),
                  );
                },
              itemCount: months.length,
            )
        )
    );
  }

}
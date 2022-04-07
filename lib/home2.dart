import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/columnPage'), child: Text('Column Page')),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/listview'), child: Text('ListView Page')),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/stack'), child: Text('Stack Page')),
          ],
        ),
      )
    );
  }

}
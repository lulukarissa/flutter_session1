import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       margin: EdgeInsets.only(top: 30),
       padding: EdgeInsets.all(10),
       color: Colors.grey,
       height: 300,
       width: 300,
       alignment: Alignment.bottomRight,
       child: Text('Im inside'),
     ),
   );
  }
}
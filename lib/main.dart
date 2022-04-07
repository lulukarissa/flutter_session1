import 'package:flutter/material.dart';
import 'package:flutter_lab1/container.dart';
import 'package:flutter_lab1/column.dart';
import 'package:flutter_lab1/flex.dart';
import 'package:flutter_lab1/stack.dart';
import 'package:flutter_lab1/listview.dart';
import 'package:flutter_lab1/listviewbuilder.dart';
import 'package:flutter_lab1/home.dart';
import 'package:flutter_lab1/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const HomePage(),
        '/columnPage': (context) => const ColumnPage(),
        '/listview': (context) => const ListViewPage(),
        '/stack': (context) => const StackPage(),
        '/detail': (context) => const DetailPage(),
    },
//      home: ListViewBuilderPage(),
    );
  }
}

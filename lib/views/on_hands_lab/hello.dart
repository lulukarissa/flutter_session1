import 'package:flutter/material.dart';
import 'package:flutter_lab1/providers/session_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HelloPage extends StatelessWidget {
  const HelloPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          var session = ref.watch(sessionProvider);
          return Text("Hello ${session.username}");
        }),
      ),
    );
  }
}

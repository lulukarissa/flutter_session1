import 'package:flutter/material.dart';
import 'package:flutter_lab1/providers/greeting_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListViewPage extends ConsumerWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Column(
          children: [
          SizedBox(
            height: 300,
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
            ),
          ),
          ElevatedButton(onPressed: () => ref.read(greetingProvider).sayHello(), child: const Text("Say Hello"))
        ]));
  }
}

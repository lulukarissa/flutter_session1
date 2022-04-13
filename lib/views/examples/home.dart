import 'package:flutter/material.dart';
import 'package:flutter_lab1/providers/session_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Consumer(builder: (context, ref, child) {
              var session = ref.watch(sessionProvider);
              if(session.username != null) {
                return Text("Selamat Datang ${session.username}");
              } else {
                return const Text("Silakan Login");
              }
            }),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/columnPage'), child: const Text('Column Page')),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/listview'), child: const Text('ListView Page')),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/login'), child: const Text('Login')),
            const SizedBox(height: 10),
            // ElevatedButton(onPressed: () => ref.read(greetingProvider).sayHello(), child: Text('Say Hello')),
          ],
        ),
      )
    );
  }

}
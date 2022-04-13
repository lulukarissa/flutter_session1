import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab1/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Beepy',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20)),
        ),
        body: Container(
            margin: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  alignment: Alignment.center,
                  child: Image.asset("assets/imgs/car1.png"),
                ),
                const SizedBox(height: 30),
                Expanded(
                    child: Container(
                  width: 300,
                  alignment: Alignment.center,
                  child: Column(
                    children: const [
                      Text('Find Your Vehicle',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24)),
                      Text('Find the perfect vehicle for every occasion!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16)),
                    ],
                  ),
                )),
                Container(
                    padding: const EdgeInsets.all(20),
                    child: Consumer(builder: ((context, ref, child) {
                      return CupertinoSwitch(
                        value: ref.watch(themeProvider).isDarkMode,
                        onChanged: (bool value) {
                          ref.read(themeProvider.notifier).setTheme(value);
                        },
                        activeColor: const Color(0xffEB5757),
                      );
                    }))),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(40),
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, '/detail'),
                    child: Ink(
                      decoration: const BoxDecoration(
                          color: Color(0xffFA7F35),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 18, horizontal: 45),
                          child: Text('Continue',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white))),
                    ),
                  ),
                ),
              ],
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_lab1/constants/theme.dart';
import 'package:flutter_lab1/providers/theme_provider.dart';
import 'package:flutter_lab1/views/assignment/detail.dart';
// import 'package:flutter_lab1/views/on_hands_lab/hello.dart';
import 'package:flutter_lab1/views/assignment/home.dart';
import 'package:flutter_lab1/views/assignment/list.dart';
// import 'package:flutter_lab1/views/examples/column.dart';
// import 'package:flutter_lab1/views/examples/form_validation.dart';
// import 'package:flutter_lab1/views/examples/home.dart';
// import 'package:flutter_lab1/views/examples/listview.dart';
// import 'package:flutter_lab1/views/examples/stack.dart';
// import 'package:flutter_lab1/views/on_hands_lab/landing.dart';
// import 'package:flutter_lab1/views/on_hands_lab/login_food.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // runApp(const MyApp());
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(themeProvider).isDarkMode;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: isDarkMode ? darkThemeData : lightThemeData,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        // ASSIGNMENT
        '/': (context) => const HomePage(),
        '/detail': (context) => const DetailPage(),
        '/list': (context) => ListPage(),

        // ON HANDS LAB
        // '/': (context) => const LandingPage(),
        // '/login':(context) => const LoginFoodPage(),
        // '/hello':(context) => const HelloPage(),

        // EXAMPLES
        // '/': (context) => const HomePage2(),
        // '/columnPage': (context) => const ColumnPage(),
        // '/listview': (context) => const ListViewPage(),
        // '/stack': (context) => const StackPage(),
        // '/detail': (context) => const DetailPage(),
        // '/login':(context) => FormValidationPage(),
    },
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final greetingProvider = Provider<Greeting>((ref) {
  return Greeting();
});

class Greeting {
  void sayHello() {
    if (kDebugMode) {
      print("hello semua");
    }
  }
}

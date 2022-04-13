import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab1/providers/session_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormValidationPage extends ConsumerWidget {
  FormValidationPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final _userNameFormController = TextEditingController();
  final _passwordFormController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(title: const Text('Form Validation')),
        extendBodyBehindAppBar: false,
        body: Form(
            key: _formKey,
            child: Column(children: [
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("Username"),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Enter Username",
                ),
                style: const TextStyle(fontSize: 23),
                controller: _userNameFormController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter username";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 5),
              TextFormField(
                controller: _passwordFormController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter password";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ref
                          .read(sessionProvider.notifier)
                          .setSession(_userNameFormController.text);
                          Navigator.pushNamed(context, '/');
                    }
                  },
                  child: const Text("Sign In"))
            ])));
  }
}

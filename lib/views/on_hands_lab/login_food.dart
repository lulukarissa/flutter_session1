import 'package:flutter/material.dart';
import 'package:flutter_lab1/providers/session_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginFoodPage extends StatefulWidget {
  const LoginFoodPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff22C7A9),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.centerRight,
                  child: Image.asset("assets/imgs/man.png", width: 270),
                ),
                const SizedBox(height: 50),
                const Text("Welcome Back!",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 30)),
                const SizedBox(height: 10),
                const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et.",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 13)),
                const SizedBox(height: 22),
                Form(
                    key: _formKey,
                    child: Column(children: [
                      Container(
                        child: TextFormField(
                          controller: _userNameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter username";
                            } else {
                              return null;
                            }
                          },
                          textAlignVertical: TextAlignVertical.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                            prefixIcon:
                                Icon(Icons.person, color: Color(0xff22C7A9)),
                            hintText: "Username, Email",
                          ),
                        ),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xffF3F3F3)),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter password";
                            } else {
                              return null;
                            }
                          },
                          obscureText: !_showPassword,
                          textAlignVertical: TextAlignVertical.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                            prefixIcon: const Icon(Icons.lock,
                                color: Color(0xff22C7A9)),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                                icon: Icon(
                                    _showPassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: const Color(0xff22C7A9))),
                            hintText: "Password",
                          ),
                        ),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xffF3F3F3)),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Sign Up",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.white)),
                          Text("Forgot Password ?",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xff2D2626))),
                        ],
                      ),
                      Consumer(builder: (context, ref, child) {
                        return (
                          Container(
                          margin: const EdgeInsets.only(top: 25, bottom: 20),
                          width: double.infinity,
                          height: 60,
                          child: InkWell(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                ref.read(sessionProvider.notifier).setSession(_userNameController.text);
                                Navigator.pushNamed(context, "/hello");
                              }
                            },
                            child: Ink(
                              child: const Center(
                                  child: Text("Login",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          fontSize: 23))),
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x40000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 4,
                                      spreadRadius: 0),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Color(0xffDFB497),
                              ),
                            ),
                          ))
                        );
                      })
                    ])),
              ])),
        ));
  }
}

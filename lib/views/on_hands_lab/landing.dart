import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff22C7A9),
      body: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Image.asset("assets/imgs/food.png", width: 250),
              ),
              const SizedBox(height: 20),
              const Text('Foodienator',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                      fontSize: 33,
                      color: Colors.white)),
              const Text('Order your favorite Meals',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.white)),
              const Text('Here!',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.white)),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () => Navigator.pushNamed(context, "/login"),
                      child: Ink(
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x1f000000),
                                  offset: Offset(0, 1),
                                blurRadius: 1,
                                spreadRadius: 0,
                              ),
                            ],
                            color: Color(0xff2DB6A3),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                          child: Text('Sign In',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                  color: Colors.white))
                        ),
                      ),
                  ),
                  InkWell(
                    onTap: () => {},
                    child: Ink(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x1f000000),
                              offset: Offset(0, 1),
                              blurRadius: 1,
                              spreadRadius: 0,
                            ),
                          ],
                          color: Color(0xffDADADA),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15))),
                      child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                          child: Text('Register',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19,
                                  color: Colors.black))
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
            ],
          )),
    );
  }
}

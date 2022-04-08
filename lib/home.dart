import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Color(0xff2A3640)),
          title: const Text('Beepy',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black)),
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
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                color: Colors.black)),
                        Text('Find the perfect vehicle for every occasion!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.black)),
                      ],
                  ),
                )),
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

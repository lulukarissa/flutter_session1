import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//        backgroundColor: Colors.white,
//        title: const Text('Beepy',
//            style: TextStyle(
//                fontFamily: 'Poppins',
//                fontWeight: FontWeight.w600,
//                fontSize: 20,
//                color: Colors.black)),
//      ),
        body: Container(
            margin: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    child: const Text('Cars',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black))),
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  alignment: Alignment.center,
                  child: Image.asset("assets/imgs/car1.png"),
                ),
                const SizedBox(height: 20),
                const Text('Find Your Vehicle',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.black)),
                const Text('Find the perfect vehicle for every',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black)),
                const Text(' occasion!',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.black)),
                Expanded(child: Container()),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/detail'),
                  child: Ink(
                    decoration: const BoxDecoration(
                        color: Color(0xffFA7F35),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                        child: Text('Continue',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white))
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            )));
  }
}

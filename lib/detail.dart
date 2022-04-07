import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

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
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Image.asset("assets/imgs/car2.png"),
                ),
                const SizedBox(height: 20),
                Expanded(child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff60B5F4),
                      borderRadius:  BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  child: Column(
                    children: [
                      InkWell(
                        child: Ink(
                          decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                              child: Text('Book Now',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.black))
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
                const SizedBox(height: 20),
              ],
            )));
  }
}

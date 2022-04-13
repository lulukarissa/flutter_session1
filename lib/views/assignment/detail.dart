import 'package:flutter/material.dart';

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({Key? key}) : super(key: key);

  @override
  _FavoriteIconState createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool _isFavorite = false;

  void setFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (_isFavorite)
        ? Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Icon(
                  Icons.star,
                  size: 28,
                  color: Color(0xffFFD644),
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.star_outline_rounded,
                  size: 34,
                  color: Colors.white,
                ),
                onPressed: setFavorite,
              )
            ],
          )
        : IconButton(
            icon: const Icon(
              Icons.star_outline_rounded,
              size: 34,
              color: Colors.white,
            ),
            onPressed: setFavorite,
          );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cars',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/imgs/ava.png"),
            )
          ],
        ),
        body: Container(
            margin: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Image.asset("assets/imgs/car2.png"),
                ),
                const SizedBox(height: 40),
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(30),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color(0xff60B5F4),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text('Sport Car',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 39,
                                                color: Colors.white)),
                                        Text('\$55/day',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 19,
                                                color: Colors.white)),
                                      ]),
                                  const FavoriteIcon(),
                                ]),
                            const SizedBox(height: 30),
                            const Text('Description',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                    color: Colors.white)),
                            const SizedBox(height: 10),
                            const Text(
                                'Wanna ride the coolest sport car in the world?',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(30),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: InkWell(
                          onTap: () {},
                          child: Ink(
                            child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 18, horizontal: 45),
                                child: Text('Book Now',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.black))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}

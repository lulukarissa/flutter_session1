import 'package:flutter/material.dart';
import 'package:flutter_lab1/models/car.dart';

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

// class ListPage extends StatefulWidget {
//   const ListPage({Key? key}) : super(key: key);

//   @override
//   _ListPageState createState() => _ListPageState();
// }

class ListPage extends StatelessWidget {
  ListPage({Key? key}) : super(key: key);

  final List<CarModel> _carList = [
    CarModel(
        0xffB67853, 'Classic Car', '\$34', true, 'assets/imgs/carlist1.png'),
    CarModel(
        0xff60B5F4, 'Sport Car', '\$55', false, 'assets/imgs/carlist2.png'),
    CarModel(
        0xff8382C2, 'Flying Car', '\$500', true, 'assets/imgs/carlist3.png'),
    CarModel(
        0xff2A3640, 'Classic Car', '\$45', true, 'assets/imgs/carlist4.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cars',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/imgs/ava.png"),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.all(30),
                child: Column(
                  children: _carList
                      .map((data) => (Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: InkWell(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/detail'),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 30),
                                    width: double.infinity,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                          color: Color(data.bg),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(data.name,
                                                  style: const TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 24,
                                                      color: Colors.white)),
                                              Text(data.price,
                                                  style: const TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14,
                                                      color: Colors.white)),
                                              const SizedBox(height: 20),
                                              const FavoriteIcon(),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: Image.asset(data.src, width: 200),
                                  )
                                ],
                              )))))
                      .toList(),
                ))));
  }
}

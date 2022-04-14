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

// class ListPage extends StatefulWidget {
//   const ListPage({Key? key}) : super(key: key);

//   @override
//   _ListPageState createState() => _ListPageState();
// }

class ListPage extends StatelessWidget {
  ListPage({Key? key}) : super(key: key);

  final List<Map> _carList = [
    {
      'bg': const Color(0xffB67853),
      'name': 'Classic Car',
      'price': '\$34',
      'isLiked': true,
      'src': Image.asset("assets/imgs/carlist1.png")
    },
    {
      'bg': const Color(0xff60B5F4),
      'name': 'Sport Car',
      'price': '\$55',
      'isLiked': false,
      'src': Image.asset("assets/imgs/carlist2.png")
    },
    {
      'bg': const Color(0xff8382C2),
      'name': 'Flying Car',
      'price': '\$500',
      'isLiked': true,
      'src': Image.asset("assets/imgs/carlist3.png")
    },
    {
      'bg': const Color(0xff2A3640),
      'name': 'Electric Car',
      'price': '\$45',
      'isLiked': true,
      'src': Image.asset("assets/imgs/carlist4.png")
    },
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
        body: Container(
            margin: const EdgeInsets.all(30),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 30),
                      width: double.infinity,
                      child: InkWell(
                        onTap: () => Navigator.pushNamed(context, '/detail'),
                        child: Ink(
                          decoration: const BoxDecoration(
                              color: Color(0xff60B5F4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Sport Car',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24,
                                          color: Colors.white)),
                                  Text('\$55/day',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.white)),
                                  SizedBox(height: 20),
                                  FavoriteIcon(),
                                ],
                              )),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Image.asset("assets/imgs/car2.png", width: 180),
                    )
                  ],
                )
                // _carList.map((Map data) {
                //   return Stack(
                //     alignment: Alignment.bottomRight,
                //     children: [
                //       Container(
                //         color: data['bg'],
                //       )
                //     ],
                //   );
                // }).toList(),
              ],
            )));
  }
}

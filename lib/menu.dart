import 'package:flutter/material.dart';
import 'main.dart';

class Submenu extends StatelessWidget {
  const Submenu({Key? key, required this.teks}) : super(key: key);
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            teks,
            style: const TextStyle(
              color: Color.fromRGBO(18, 18, 18, 1),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextButton(
              onPressed: () {},
              child: const Text('View all'),
              style: TextButton.styleFrom(
                  primary: const Color.fromRGBO(132, 132, 132, 1)))
        ]));
  }
}

class PlaceBidMenu extends StatelessWidget {
  const PlaceBidMenu(
      {Key? key,
      required this.kreator,
      required this.judul,
      required this.harga,
      required this.gambar,
      required this.kreatorImg})
      : super(key: key);
  final String kreator;
  final String judul;
  final String harga;
  final String gambar;
  final String kreatorImg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0.95),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 28),
            width: 358,
            height: 358,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      blurStyle: BlurStyle.outer,
                      blurRadius: 15,
                      color: Colors.black26)
                ],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(gambar), fit: BoxFit.cover)),
          ),
          Container(
            height: 320,
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurStyle: BlurStyle.outer,
                      blurRadius: 12,
                      color: Colors.black26)
                ],
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Column(children: [
              Container(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(kreatorImg)))),
                        Text(kreator,
                            style: const TextStyle(
                                color: Color.fromRGBO(132, 132, 132, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 16))
                      ])
                  // const Text('Current Price',
                  //     style: TextStyle(
                  //         color: Color.fromRGBO(132, 132, 132, 1),
                  //         fontWeight: FontWeight.w500,
                  //         fontSize: 14)),

                  )
            ]),
          ),
        ],
      ),
    );
  }
}

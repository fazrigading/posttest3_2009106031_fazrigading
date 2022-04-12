import 'package:flutter/material.dart';
import 'package:postest2_fazriading_2009106031/button.dart';

class CurrentPrice extends StatelessWidget {
  const CurrentPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Current Price',
        style: TextStyle(
            color: Color.fromRGBO(132, 132, 132, 1),
            fontWeight: FontWeight.w500,
            fontSize: 14));
  }
}

class NFT extends StatelessWidget {
  const NFT(
      {Key? key,
      required this.kreator,
      required this.judul,
      required this.harga,
      required this.gambar})
      : super(key: key);
  final String kreator;
  final String judul;
  final String harga;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: 320,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 0, 0, 0.12),
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 20, top: 330, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('By ' + kreator,
                          style: const TextStyle(
                              color: Color.fromRGBO(132, 132, 132, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 14)),
                      const CurrentPrice()
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(judul,
                          style: const TextStyle(
                              color: Color.fromRGBO(18, 18, 18, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 18)),
                      Text(harga + ' ETH',
                          style: const TextStyle(
                              color: Color.fromRGBO(18, 18, 18, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 18)),
                    ],
                  )),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: 320,
          height: 320,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              image: DecorationImage(
                  image: AssetImage(gambar), fit: BoxFit.cover)),
        ),
        const PlaceBid(),
      ],
    );
  }
}

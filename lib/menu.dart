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
  const PlaceBidMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

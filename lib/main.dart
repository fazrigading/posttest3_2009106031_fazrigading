import 'package:flutter/material.dart';
import 'button.dart';
import 'menu.dart';
import 'nfts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post-test 2 2009106031',
      theme: ThemeData(fontFamily: 'Manrope'),
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset('assets/ethcopy1.png',
              fit: BoxFit.contain, height: 32, width: 32),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              "12.89 ETH",
              style: TextStyle(
                  fontFamily: 'Manrope',
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ]),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 26.0,
                  color: Colors.black,
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                ),
              )),
        ],
        backgroundColor: Colors.white,
        elevation: 1,
        toolbarHeight: 70,
      ),
      body: ListView(
        children: [
          const Submenu(teks: 'Categories'),
          const CategoriesButton(),
          const Submenu(teks: 'Featured NFTs'),
          SizedBox(
              height: 460,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  NFT(
                      kreator: 'Bored Ape Yacht Club',
                      judul: 'Bored Ape #8854',
                      harga: '25',
                      gambar: 'assets/boredape8854.png'),
                  NFT(
                      kreator: 'MekaVerse',
                      judul: 'Meka #3139',
                      harga: '10',
                      gambar: 'assets/Rectangle69.png'),
                  NFT(
                      kreator: 'Zeff Hood',
                      judul: 'Dacing David',
                      harga: '7',
                      gambar: 'assets/image7.png'),
                ],
              )),
          const Submenu(teks: 'Featured Creators'),
          const Creators(),
        ],
      ),
    );
  }
}

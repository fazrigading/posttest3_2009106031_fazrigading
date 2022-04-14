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
      title: 'Post-test 3 2009106031',
      theme: ThemeData(
          fontFamily: 'Manrope',
          appBarTheme:
              const AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

PreferredSizeWidget myAppBar() {
  return AppBar(
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
  );
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: ListView(
        children: [
          const Submenu(teks: 'Categories'),
          const CategoriesButton(),
          const Submenu(teks: 'Featured NFTs'),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const <Widget>[
                  NFT(
                    kreator: 'Bored Ape Yacht Club',
                    judul: 'Bored Ape #8854',
                    harga: '25',
                    gambar: 'assets/boredape8854.png',
                    kreatorImg: 'assets/bayc.png',
                  ),
                  NFT(
                    kreator: 'MekaVerse',
                    judul: 'Meka #3139',
                    harga: '10',
                    gambar: 'assets/meka3139.png',
                    kreatorImg: 'assets/mekaverse.png',
                  ),
                  NFT(
                    kreator: 'Zeff Hood',
                    judul: 'Dacing David',
                    harga: '7',
                    gambar: 'assets/dacingdavid.png',
                    kreatorImg: 'assets/zeffhood.png',
                  ),
                ],
              )),
          const Submenu(teks: 'Featured Creators'),
          const Creators(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'button.dart';
import 'menu.dart';
import 'nftlist.dart';
import 'profilepage.dart';

void main() {
  runApp(const MyApp());
}

double balance = 43.19;

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

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        toolbarHeight: 70,
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset('assets/ethcopy1.png',
              fit: BoxFit.contain, height: 32, width: 32),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              "Fazri Gading",
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
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                alignment: Alignment.centerRight,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
                icon: const Icon(Icons.person_outline)),
          )
        ],
      ),
      body: ListView(
        children: const [
          Submenu(teks: 'Categories'),
          CategoriesButton(),
          Submenu(teks: 'Featured NFTs'),
          FeaturedNFT(),
          Submenu(teks: 'Featured Creators'),
          Creators(),
        ],
      ),
    );
  }
}

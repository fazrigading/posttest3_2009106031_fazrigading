import 'package:flutter/material.dart';
import 'button.dart';
import 'menu.dart';
import 'nftlist.dart';
import 'profilepage.dart';

void main() {
  runApp(const MyApp());
}

double balance = 43.19;
String firstName = "Jenny",
    lastName = "Doe",
    emailAdress = "jennydoe@gmail.com";
List<String> gender = ["Male", "Female"];
int chosenGender = 1;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post-test 3 2009106031',
      home: const HomeScreen(),
      theme: ThemeData(
          fontFamily: 'Manrope',
          appBarTheme:
              const AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, firstName, lastName}) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  State<HomeScreen> createState() => _HomeScreenState(firstName, lastName);
}

class _HomeScreenState extends State<HomeScreen> {
  _HomeScreenState(firstName, lastName);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        toolbarHeight: 70,
        title: const Text(
          "NFT App by Gading",
          style: TextStyle(
              fontFamily: 'Manrope',
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w800),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                alignment: Alignment.centerRight,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfile(
                              firstName: firstName,
                              lastName: lastName,
                              gender: gender,
                              emailAddress: emailAdress,
                              chosenGender: chosenGender)));
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

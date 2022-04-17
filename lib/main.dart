import 'package:flutter/material.dart';
import 'button.dart';
import 'menu.dart';
import 'nftlist.dart';
import 'profilepage.dart';

void main() {
  runApp(const MyApp());
}

double balance = 43.19;
String firstName = "Fazri", lastName = "Gading";
List<String> gender = ["Male", "Female"];
int chosenGender = 0;

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
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        // '/second': (context) => EditProfile(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, firstName, lastName}) : super(key: key);
  @override
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
          "NFT App",
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
                              chosenGender: chosenGender)));
                },
                icon: const Icon(Icons.person_outline)),
          )
        ],
      ),
      body: ListView(
        children: const [
          // Container(
          //     alignment: Alignment.center,
          //     padding: const EdgeInsets.only(top: 20),
          //     child: Text(
          //       "Welcome, $firstName $lastName",
          //       style: const TextStyle(
          //           fontFamily: 'Manrope',
          //           color: Colors.black,
          //           fontSize: 20,
          //           fontWeight: FontWeight.w300),
          //     )),
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

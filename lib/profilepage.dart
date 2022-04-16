import 'package:flutter/material.dart';

enum PersonGender { male, female, other }

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String firstName = '';
  String lastname = '';
  String username = '';

  PersonGender? _personGender = PersonGender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Profile",
            style: TextStyle(
                fontFamily: 'Manrope',
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w800),
          ),
          backgroundColor: Colors.white,
          elevation: 1,
          toolbarHeight: 70,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'First Name',
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Last Name',
                  ),
                ),
              ),
              ListTile(
                title: const Text('Male'),
                leading: Radio<PersonGender>(
                  value: PersonGender.male,
                  groupValue: _personGender,
                  onChanged: (PersonGender? value) {
                    setState(() {
                      _personGender = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Female'),
                leading: Radio<PersonGender>(
                  value: PersonGender.female,
                  groupValue: _personGender,
                  onChanged: (PersonGender? value) {
                    setState(() {
                      _personGender = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Other'),
                leading: Radio<PersonGender>(
                  value: PersonGender.female,
                  groupValue: _personGender,
                  onChanged: (PersonGender? value) {
                    setState(() {
                      _personGender = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  EditProfile(
      {Key? key,
      required this.firstName,
      required this.lastName,
      required this.gender,
      required this.chosenGender})
      : super(key: key);
  String firstName, lastName;
  List gender;
  int chosenGender;
  @override
  State<EditProfile> createState() =>
      _EditProfileState(firstName, lastName, gender, chosenGender);
}

class _EditProfileState extends State<EditProfile> {
  String firstName,
      lastName,
      newfirstName = "",
      newlastName = "",
      chosenRadio = "Male";
  TextEditingController ctrFirst = TextEditingController();
  TextEditingController ctrLast = TextEditingController();
  TextEditingController ctrGender = TextEditingController();
  int idRadio = 1, chosenGender;
  List gender;
  _EditProfileState(
      this.firstName, this.lastName, this.gender, this.chosenGender);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    ctrFirst.dispose();
    ctrLast.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Edit Profile",
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
          child: ListView(
            children: <Widget>[
              const Icon(
                Icons.person,
                size: 256,
              ),
              Column(
                children: [
                  Text("First Name: $firstName"),
                  Text("Last Name: $lastName"),
                  Text("Gender: " + gender[chosenGender]),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                child: TextFormField(
                  controller: ctrFirst,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "First Name",
                      hintText: "ex: Fazri"),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                child: TextFormField(
                  controller: ctrLast,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Last Name",
                      hintText: "ex: Gading"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("Gender:"),
                    Radio(
                      value: 1,
                      groupValue: idRadio,
                      onChanged: (val) {
                        setState(() {
                          chosenGender = 0;
                          chosenRadio = "Male";
                          idRadio = 1;
                        });
                      },
                    ),
                    const Text("Male"),
                    Radio(
                      value: 2,
                      groupValue: idRadio,
                      onChanged: (val) {
                        setState(() {
                          chosenGender = 1;
                          chosenRadio = "Female";
                          idRadio = 2;
                        });
                      },
                    ),
                    const Text("Female"),
                  ],
                ),
              ),
              Material(
                borderRadius: BorderRadius.circular(18.0),
                elevation: 5,
                color: const Color.fromRGBO(18, 18, 18, 1),
                child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        firstName = ctrFirst.text;
                        lastName = ctrLast.text;
                        chosenGender = chosenGender;
                      });
                    },
                    minWidth: 158,
                    height: 58,
                    child: const Text(
                      'Done',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ],
          ),
        ));
  }
}

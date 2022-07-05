import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/colors.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? name = "";
  String? pass = "";

  @override
  void initState() {
    setup();
    super.initState();
  }

  void setup() async {
    await SharedPreferences.getInstance().then((value) {
      name = value.getString("email");
      pass = value.getString("password");
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "USERNAME",
            textAlign: TextAlign.start,
            style: GoogleFonts.montserrat(
              color: primary,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "$name",
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "PASSWORD",
            textAlign: TextAlign.start,
            style: GoogleFonts.montserrat(
              color: primary,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text("$pass"),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () async {
              await SharedPreferences.getInstance().then((value) {
                value.setBool("logged", false);
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                    (route) => false);
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: Text(
              "LOG OUT",
              style: GoogleFonts.montserrat(
                color: primary,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vowsnviews/screens/home.dart';
import 'package:vowsnviews/screens/signup.dart';

import '../constants/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/ic_logo.png",
                        height: 120,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "LOGIN",
                        style: GoogleFonts.montserrat(
                          color: primary,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade400,
                              ),
                              child: TextFormField(
                                controller: email,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                              ),
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
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade400,
                              ),
                              padding: const EdgeInsets.all(0),
                              child: TextFormField(
                                controller: pwd,
                                obscureText: !isVisible,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      isVisible = !isVisible;
                                      setState(() {});
                                    },
                                    icon: isVisible
                                        ? const Icon(
                                            Icons.visibility,
                                            color: Colors.grey,
                                            size: 18,
                                          )
                                        : const Icon(
                                            Icons.visibility_off,
                                            color: Colors.grey,
                                            size: 18,
                                          ),
                                  ),
                                  contentPadding: const EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      if (email.text.isNotEmpty &&
                                          pwd.text.isNotEmpty) {
                                        await SharedPreferences.getInstance()
                                            .then((value) {
                                          value.setBool("logged", true);
                                          value.setString("email", email.text);
                                          value.setString("password", pwd.text);
                                        });
                                        Navigator.of(context)
                                            .pushAndRemoveUntil(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomePage(),
                                                ),
                                                (route) => false);
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content: Text(
                                                    "enter login credentials to continue")));
                                      }
                                    },
                                    child: Text(
                                      "LOGIN",
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUpPage(),
                                          ),);
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                    ),
                                    child: Text(
                                      "SIGNUP",
                                      style: GoogleFonts.montserrat(
                                        color: primary,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset("assets/images/google.png"),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ClipOval(
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset("assets/images/fb.png"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

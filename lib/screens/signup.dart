import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vowsnviews/screens/otp.dart';

import '../constants/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool isChecked = false;
  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();

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
                      const SizedBox(height: 40,),
                      Image.asset(
                        "assets/images/ic_logo.png",
                        height: 120,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "SIGN UP",
                        style: GoogleFonts.montserrat(
                          color: primary,
                          fontSize: 22,
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
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "FIRST NAME",
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
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.all(10),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "LAST NAME",
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
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.all(10),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "EMAIL",
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
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Text(
                              "PHONE NUMBER",
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
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                              ),
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
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Text(
                              "CONFIRM PASSWORD",
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
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Checkbox(value: isChecked, onChanged: (value) {
                            isChecked = !isChecked;
                            setState(() {});
                          }),
                          const Expanded(
                            child: Text(
                                "Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our privacy policy."),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                const OtpPage(),
                              ),);
                        },
                        child: Text(
                          "CONFIRM",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "SIGN UP WITH",
                  style: GoogleFonts.montserrat(
                    color: primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

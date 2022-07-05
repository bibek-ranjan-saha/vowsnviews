import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vowsnviews/screens/home.dart';
import 'package:vowsnviews/screens/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedIn = false;

  @override
  void initState() {
    setup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'vowsnviews',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: isLoggedIn ? const HomePage() : const LoginPage(),
    );
  }

  void setup() async {
    var prefs = await SharedPreferences.getInstance();
    isLoggedIn = prefs.getBool("logged") ?? false;
    setState(() {});
  }
}

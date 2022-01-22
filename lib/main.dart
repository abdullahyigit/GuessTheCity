import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guessthecity/screens/home_screen.dart';

void main() {
  runApp(const Expenso());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xff1C1C1C),
  ));
}

class Expenso extends StatefulWidget {
  const Expenso({Key? key}) : super(key: key);

  @override
  State<Expenso> createState() => _ExpensoState();
}

class _ExpensoState extends State<Expenso> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Home_Screen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

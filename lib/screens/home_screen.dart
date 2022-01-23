// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:guessthecity/screens/guess_screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GUESS THE CITY',
            style:
                TextStyle(color: Colors.black, fontFamily: 'YOUR_FONT_FAMILY')),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: Container(
        color: const Color(0xfff5f5dc),
        child: Column(
          children: <Widget>[
//===========================AVRUPA=============================================
            Expanded(
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Avruma Kıtası Şehirleri'),
                    duration: Duration(seconds: 2),
                  ));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Guess_Screen()));
                },
                child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xffd5b791),
                    border: Border.all(
                      color: const Color(0xffd5b791),
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                    image: const DecorationImage(
                        image: AssetImage("assets/continents/europe.png"),
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.centerRight),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width / 12),
                      const Text(
                        'Avrupa',
                        style: TextStyle(fontSize: 27),
                      ),
                      const Text(
                        '(0/80)',
                        style: TextStyle(fontSize: 27),
                      )
                    ],
                  ),
                ),
              ),
            ),
//===========================ASYA=============================================
            Expanded(
              child: InkWell(
                child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xffd5b791),
                    border: Border.all(
                      color: const Color(0xffd5b791),
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                    image: const DecorationImage(
                        image: AssetImage("assets/continents/asia.jpg"),
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.centerRight),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width / 12),
                      const Text(
                        'Asya',
                        style: TextStyle(fontSize: 27),
                      ),
                      const Text(
                        '(0/80)',
                        style: TextStyle(fontSize: 27),
                      )
                    ],
                  ),
                ),
              ),
            ),
//===========================KUZEYAMERİKA=============================================
            Expanded(
              child: InkWell(
                child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xffd5b791),
                    border: Border.all(
                      color: const Color(0xffd5b791),
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                    image: const DecorationImage(
                        image: AssetImage("assets/continents/northamerica.png"),
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.centerRight),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width / 12),
                      const Text(
                        'Kuzey Amerika',
                        style: TextStyle(fontSize: 27),
                      ),
                      const Text(
                        '(0/80)',
                        style: TextStyle(fontSize: 27),
                      )
                    ],
                  ),
                ),
              ),
            ),
//===========================GÜNEYAMERİKA=============================================
            Expanded(
              child: InkWell(
                child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xffd5b791),
                    border: Border.all(
                      color: const Color(0xffd5b791),
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                    image: const DecorationImage(
                        image: AssetImage("assets/continents/southamerica.png"),
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.centerRight),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width / 12),
                      const Text(
                        'Güney Amerika',
                        style: TextStyle(fontSize: 27),
                      ),
                      const Text(
                        '(0/80)',
                        style: TextStyle(fontSize: 27),
                      )
                    ],
                  ),
                ),
              ),
            ),
//===========================AFRİKA=============================================
            Expanded(
              child: InkWell(
                child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xffd5b791),
                    border: Border.all(
                      color: const Color(0xffd5b791),
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                    image: const DecorationImage(
                        image: AssetImage("assets/continents/africa.jpg"),
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.centerRight),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width / 12),
                      const Text(
                        'Afrika',
                        style: TextStyle(fontSize: 27),
                      ),
                      const Text(
                        '(0/80)',
                        style: TextStyle(fontSize: 27),
                      )
                    ],
                  ),
                ),
              ),
            ),
//===========================AVUSTRALYA=============================================
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xffd5b791),
                    border: Border.all(
                      color: const Color(0xffd5b791),
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                    image: const DecorationImage(
                        image: AssetImage("assets/continents/australia.jpg"),
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.centerRight),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width / 12),
                      const Text(
                        'Avustralya',
                        style: TextStyle(fontSize: 27),
                      ),
                      const Text(
                        '(0/80)',
                        style: TextStyle(fontSize: 27),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              child: Container(),
            ),
            // Continent(context,'Avrupa')
          ],
        ),
      ),
    );
  }
}

Widget continent(context, String continentName) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color(0xffd5b791),
        border: Border.all(
          color: const Color(0xffd5b791),
        ),
        borderRadius: BorderRadius.circular(30.0),
        image: const DecorationImage(
            image: AssetImage("assets/europe3.png"),
            fit: BoxFit.fitHeight,
            alignment: Alignment.centerRight),
      ),
      child: Row(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width / 12),
          const Text(
            'Afrika',
            style: TextStyle(fontSize: 27),
          ),
          const Text(
            '(0/80)',
            style: TextStyle(fontSize: 27),
          )
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  // ignore: prefer_typing_uninitialized_variables
  var _result;

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            'assets/3.jpg',
            fit: BoxFit.cover,
          )),
          Container(
            margin: const EdgeInsets.only(left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: _height / 12),
                SizedBox(
                  width: 350,
                  child: Text(
                    "GUESS \nTHE \nCITY",
                    style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: const Color(0xffBABABA),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'Welcome',
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Please select\na language",
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: const Color(0xffBABABA),
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: _height / 36),
                RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Türkçe",
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: const Color(0xffBABABA),
                          fontWeight: FontWeight.w300),
                    ),
                    activeColor: Colors.blue,
                    value: 1,
                    groupValue: _result,
                    onChanged: (value) {
                      setState(() {
                        _result = value;
                      });
                    }),
                RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "English",
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: const Color(0xffBABABA),
                          fontWeight: FontWeight.w300),
                    ),
                    activeColor: Colors.blue,
                    value: 2,
                    groupValue: _result,
                    onChanged: (value) {
                      setState(() {
                        _result = value;
                      });
                    }),
                SizedBox(height: _height / 3),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  // color: Colors.green,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(199, 50),
                        primary: const Color(0xffBABABA),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: Row(
                      children: [
                        Text(
                          'Get started',
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

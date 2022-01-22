import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            'assets/cities5.jpg',
            fit: BoxFit.cover,
          )),
          Container(
            margin: const EdgeInsets.only(left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  width: 350,
                  child: Text(
                    "GUESS THE CITY",
                    style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: const Color(0xffBABABA),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 150),
                Text(
                  'Welcome',
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 350,
                  child: Text(
                    "Please enter a nickname",
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: const Color(0xffBABABA),
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 12),
                  child: TextFormField(
                    maxLength: 15,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  // color: Colors.green,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(199, 50),
                        primary: const Color(0xffC65466),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

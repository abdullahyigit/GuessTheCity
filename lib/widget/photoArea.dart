// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget photoArea(double _height) {
  return Container(
    height: 4.5 * _height / 15,
    color: const Color(0xffadd8e6),
    child: Center(
      child: RotationTransition(
        turns: const AlwaysStoppedAnimation(10 / 360),
        child: Container(
          margin: const EdgeInsets.all(40),
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff153944),
              Color(0xff235e71),
            ]),
          ),
          child: RotationTransition(
            turns: const AlwaysStoppedAnimation(350 / 360),
            child: Hero(
              tag: 'dash',
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffd5b791),
                  image: const DecorationImage(
                      image: AssetImage("assets/istanbul.jpg"),
                      fit: BoxFit.fill),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.4),
                      spreadRadius: 4,
                      blurRadius: 17,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

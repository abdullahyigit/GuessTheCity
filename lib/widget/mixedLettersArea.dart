// ignore_for_file: file_names

import 'package:flutter/material.dart';

String str = 'a';
bool asd = true;

Widget mixedLetters() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 40,
            childAspectRatio: 1,
            crossAxisSpacing: 17,
            mainAxisSpacing: 17),
        itemCount: 14,
        itemBuilder: (BuildContext ctx, index) {
          return InkWell(
            onTap: () {
              // ignore: avoid_print
              print('aa');
            },
            child: Container(
              alignment: Alignment.center,
              child: (asd)
                  ? Text(
                      'A',
                      style: TextStyle(color: Colors.white),
                    )
                  : Text(' '),
              decoration: BoxDecoration(
                  color: const Color(0xff235e71),
                  borderRadius: BorderRadius.circular(3)),
            ),
          );
        }),
  );
}

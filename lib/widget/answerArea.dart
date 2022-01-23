// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget answerArea() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 40,
            childAspectRatio: 1,
            crossAxisSpacing: 17,
            mainAxisSpacing: 17),
        itemCount: 7,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
            child: const Text(
              " ",
              style: TextStyle(color: Colors.white),
            ),
            decoration: BoxDecoration(
                color: const Color(0xff235e71),
                borderRadius: BorderRadius.circular(3)),
          );
        }),
  );
}

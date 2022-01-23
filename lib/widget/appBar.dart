// ignore_for_file: file_names

import 'package:flutter/material.dart';

PreferredSizeWidget appBar(double _height) {
  return PreferredSize(
      child: AppBar(
        title: const Text('GUESS THE CITY',
            style:
                TextStyle(color: Colors.black, fontFamily: 'YOUR_FONT_FAMILY')),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      preferredSize: Size.fromHeight(_height / 15));
}

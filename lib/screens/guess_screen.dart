// ignore_for_file: camel_case_types

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:guessthecity/components/clues.dart';
import 'package:guessthecity/widget/answerArea.dart';
import 'package:guessthecity/widget/appBar.dart';
import 'package:guessthecity/widget/mixedLettersArea.dart';
import 'package:guessthecity/widget/photoArea.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class Guess_Screen extends StatefulWidget {
  const Guess_Screen({Key? key}) : super(key: key);

  @override
  State<Guess_Screen> createState() => _Guess_ScreenState();
}

class _Guess_ScreenState extends State<Guess_Screen> {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    bool _isTrue = true;
    return Scaffold(
      appBar: appBar(_height),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          photoArea(_height),
          Container(
            height: 2 * _height / 15,
            color: const Color(0xffadd8e6),
            child: Center(
              child: ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => const FunkyOverlay(),
                    );
                  },
                  icon: const Icon(
                    Icons.lightbulb,
                    color: Colors.yellow,
                  ),
                  label: const Text("İpucu!")),
            ),
          ),
          Container(
            height: 2.3 * _height / 15,
            color: const Color(0xffadd8e6),
            child: answerArea(),
          ),
          Container(
            height: 3 * _height / 15,
            color: const Color(0xffadd8e6),
            child: mixedLetters(),
          ),
          Container(
              height: 1.7 * _height / 15,
              color: const Color(0xffadd8e6),
              child: RoundedLoadingButton(
                width: _width / 3.3,
                resetAfterDuration: true,
                resetDuration: const Duration(seconds: 4),
                successColor: Colors.green,
                animateOnTap: true,
                child: const Text('Tap me!',
                    style: TextStyle(color: Colors.white)),
                controller: _btnController,
                onPressed: () => _doSomething(_isTrue),
              )),
        ],
      ),
    );
  }

  void _doSomething(bool _isTrue) async {
    Timer(const Duration(seconds: 2), () {
      if (_isTrue == false) {
        _btnController.error();
      } else {
        _btnController.success();
      }
    });
  }
}

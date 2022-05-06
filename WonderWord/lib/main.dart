import 'dart:ffi';
import 'package:CrossWordGame/startScreen.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Wonder Word',
    home: startScreen(),
  ));
}

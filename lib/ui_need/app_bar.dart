import 'dart:math';
import 'package:flutter/material.dart';

AppBar customBar = AppBar(
  backgroundColor: Color(0xFF197447),
  title: Center(
    child: Text(
      "Lentera",
      style: TextStyle(
        fontFamily: 'Courgette',
        fontSize: 23
      ),
    ),
  ),
  actions: [
    IconButton(
      icon: Icon(Icons.notifications),
      onPressed: (){},
    )
  ],
);
import 'package:flutter/material.dart';

InputDecoration normalCondition = InputDecoration(
  hintText: "username",
  filled: true,
  fillColor: Color(0xffE1DADA),
  contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
  prefixIcon: Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Icon(Icons.person),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(50)
  ),
);

InputDecoration invalidCondition = InputDecoration(
  hintText: "username",
  filled: true,
  fillColor: Color(0xffE1DADA),
  contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
  prefixIcon: Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Icon(Icons.person),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50), borderSide: BorderSide(width: 2, color: Colors.red)
  )
);
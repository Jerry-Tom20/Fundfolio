import 'package:flutter/material.dart';
import 'package:fund_folio/doctype/home.dart';

//The main function is the starting point for all Flutter apps.
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        accentColor: Colors.deepPurpleAccent
      ),
      debugShowCheckedModeBanner: false,
      home: Home()
    ),
  );
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fund_folio/doctype/home.dart';

//The main function is the starting point for all Flutter apps.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

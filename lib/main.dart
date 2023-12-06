import 'package:flutter/material.dart';
import 'package:sber_prikol/elements/layout.dart';

void main() {
  runApp(MaterialApp(

    theme: ThemeData(
      primaryColor: Colors.white
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => const Layout()
    }
  ));
}



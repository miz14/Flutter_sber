import 'package:flutter/material.dart';
import 'package:sber_prikol/elements/Header.dart';

void main() {
  runApp(MaterialApp(

    theme: ThemeData(

    ),
    initialRoute: '/',
    routes: {
      '/': (context) => Header()
    }
  ));
}



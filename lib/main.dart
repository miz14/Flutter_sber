import 'package:flutter/material.dart';
import 'package:sber_prikol/elements/layout.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      
      initialRoute: '/',
      routes: {'/': (context) => const Layout()}));
}

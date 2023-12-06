import 'package:flutter/material.dart';
import 'package:sber_prikol/elements/HeaderRow2.dart';
import 'package:sber_prikol/elements/HeaderTittle.dart';


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 206,
          title: const HeaderTittle(),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: HeaderRow2(),
          ),
        ),

        body: const Text("123")
        );
  }
}

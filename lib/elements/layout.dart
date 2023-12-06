import 'package:flutter/material.dart';
import 'package:sber_prikol/elements/header_row2.dart';
import 'package:sber_prikol/elements/header_tittle.dart';
import 'package:sber_prikol/elements/intetests_block.dart';
import 'package:sber_prikol/elements/subs_block.dart';
import 'package:sber_prikol/elements/tarifs_block.dart';



class Layout extends StatelessWidget {
  const Layout({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          titleSpacing: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 206,
          title: const HeaderTittle(),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: HeaderRow2(),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: ListView(
            children: const [
              Padding(padding: EdgeInsets.only(bottom: 16)),
              SubsBlock(),
              Padding(padding: EdgeInsets.only(bottom: 32)),
              TarifsBlock(),
              Padding(padding: EdgeInsets.only(bottom: 32)),
              InterestsBlock(),
              Padding(padding: EdgeInsets.only(bottom: 32)),
            ],
          )
        ),
    );
  }
}

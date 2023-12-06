import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sber_prikol/elements/IconWidget.dart';

class HeaderTittle extends StatelessWidget {
  const HeaderTittle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconWidget(imgAsset: 'imgs/close.svg', onPressed: (){}),
          Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 14)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  boxShadow: const [BoxShadow(color: Color.fromRGBO(29, 29, 37, 0.48), spreadRadius: -16, blurRadius: 24, offset: Offset(0, 16))]
                ),
                child: Image.asset('imgs/avatar.png', width: 110, height: 110),
              ),
              const Padding(padding: EdgeInsets.only(top: 36)),
              const Text('Екатерина')
            ],
          ),
          IconWidget(imgAsset: 'imgs/exit.svg', onPressed: (){}),
        ]);
  }
}

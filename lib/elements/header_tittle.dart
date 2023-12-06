import 'package:flutter/material.dart';
import 'package:sber_prikol/elements/icon_widget.dart';
import 'package:sber_prikol/theme.dart';

class HeaderTittle extends StatelessWidget {
  const HeaderTittle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 6),
              child: IconWidget(imgAsset: 'imgs/close.svg', onPressed: () {})),
          Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 14)),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38),
                    boxShadow: const [
                      BoxShadow(
                          color: MyColors.avatarShadow,
                          spreadRadius: -16,
                          blurRadius: 24,
                          offset: Offset(0, 16))
                    ]),
                child: Image.asset('imgs/avatar.png', width: 110, height: 110),
              ),
              const Padding(padding: EdgeInsets.only(top: 36)),
              const Text('Екатерина', style: MyFont.blackw700s24Plus)
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(right: 6),
              child: IconWidget(imgAsset: 'imgs/exit.svg', onPressed: () {})),
        ]);
  }
}

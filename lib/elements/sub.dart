import 'package:flutter/material.dart';
import 'package:sber_prikol/theme.dart';

class Sub extends StatelessWidget {
  final String imgAsset;
  final String name;
  final String date;
  final String money;
  final VoidCallback onPressed;
  const Sub(
      {Key? key,
      required this.imgAsset,
      required this.name,
      required this.date,
      required this.money,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        width: 216,
        decoration: BoxDecoration(boxShadow: [
          const BoxShadow(
              color: MyColors.doubleShadow,
              offset: Offset(0, 8),
              blurRadius: 14),
          BoxShadow(
              color: MyColors.black08,
              offset: const Offset(0, 2),
              blurRadius: 10)
        ]),
        child: FilledButton(
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.all(0),
            backgroundColor: MyColors.white,
            foregroundColor: MyColors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Image(image: AssetImage(imgAsset), width: 36, height: 36),
                const Padding(padding: EdgeInsets.only(right: 12)),
                Text(name, style: MyFont.blackw500s16Plus)
              ]),
              const Padding(padding: EdgeInsets.only(bottom: 22)),
              Text(date, style: MyFont.blackw500s14Plus),
              const Padding(padding: EdgeInsets.only(bottom: 2)),
              Text(money, style: MyFont.black55w500s14Plus)
            ]),
          ),
        ));
  }
}

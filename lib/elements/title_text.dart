import 'package:flutter/material.dart';
import 'package:sber_prikol/theme.dart';

class TitleText extends StatelessWidget {
  final String label;
  final String desc;
  const TitleText({Key? key, required this.label, required this.desc})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(label, style: MyFont.blackw700s20),
        const Padding(padding: EdgeInsets.only(bottom: 8)),
        Text(desc, style: MyFont.black55w500s14Plus)
      ]),
    );
  }
}

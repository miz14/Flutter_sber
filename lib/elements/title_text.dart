import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {

  final String label;
  final String desc;
  const TitleText({Key ? key, required this.label, required this.desc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(
          fontFamily: "SFProText",
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.black
        )),
        const Padding(padding:EdgeInsets.only(bottom: 8)),
        Text(desc, style: TextStyle(
          fontFamily: "SFProText",
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(0.55)
        ))
      ]
    ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:sber_prikol/theme.dart';

class InterestItem extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const InterestItem({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: MyColors.black08,
            foregroundColor: MyColors.black55,
            elevation: 0,
            minimumSize: const Size(0, 0),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        onPressed: onPressed,
        child: Text(text, style: MyFont.blackw500s14Plus));
  }
}

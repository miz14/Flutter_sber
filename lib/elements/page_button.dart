import 'package:flutter/material.dart';
import 'package:sber_prikol/theme.dart';

class PageButton extends StatelessWidget {
  final String text;
  final bool active;
  final VoidCallback onPressed;
  final Color backgroundColor;
  const PageButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: MyColors.white,
          foregroundColor: MyColors.black55,
          elevation: 0,
          padding: const EdgeInsets.all(0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
      onPressed: onPressed,
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border(
                  bottom: active
                      ? const BorderSide(width: 2, color: MyColors.green)
                      : const BorderSide(
                          width: 1, color: MyColors.lightBorder))),
          height: 56,
          child: Text(text,
              style: active
                  ? MyFont.blackw500s16Plus
                  : MyFont.black55w500s16Plus)),
    );
  }
}

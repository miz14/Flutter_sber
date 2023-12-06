import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {

  final String text;
  final VoidCallback onPressed; 
  const InterestItem({Key ? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.black.withOpacity(0.08),
        foregroundColor: Colors.black.withOpacity(0.55),
        elevation: 0,
        minimumSize: const Size(0, 0),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        )
      ),
      onPressed: onPressed,
      child: Text(text, style: const TextStyle(
        fontFamily: "SFProText",
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.28,
        letterSpacing: -0.4,
        color: Colors.black
      ))
    );
  }
}
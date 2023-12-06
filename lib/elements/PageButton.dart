import 'package:flutter/material.dart';

class PageButton extends StatelessWidget {
  // const PageButton({super.key});
  final String text;
  final bool active;
  final VoidCallback onPressed;
  final Color backgroundColor;
  const PageButton({Key ? key, required this.text, required this.onPressed, required this.backgroundColor, this.active = false, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black.withOpacity(0.55),
        elevation: 0,
        padding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0)
        )
      ),
      
      onPressed: onPressed,
      child: SizedBox(
        height: 55,
        child: Text(text, style: TextStyle(color: Colors.black),)
      ),
    );
  }
}
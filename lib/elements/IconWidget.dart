
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconWidget extends StatelessWidget {
  // const IconWidget({super.key});

  final String imgAsset;
  final VoidCallback onPressed;

  const IconWidget({Key ? key, required this.imgAsset, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: IconButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
        )
      ),
      onPressed: onPressed,
      icon: SvgPicture.asset(imgAsset)
      ),
    );
  }
}
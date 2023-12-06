import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Tarif extends StatelessWidget {

  final String img;
  final String name;
  final String desc;

  const Tarif({Key ? key, required this.img, required this.name, this.desc = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 12, right: 0, bottom: 12),
      height: 64,
      width: 300,
      child: Row(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(img),
                const Padding(padding: EdgeInsets.only(left: 12)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name),
                    if (desc != "") Text(desc)
                  ],
                ),
                const Spacer(),
                Padding(padding: const EdgeInsets.only(left: 16, top: 8, right: 8, bottom: 8),
                child: SvgPicture.asset("imgs/disclosure.svg"))
                
              ],
            )
    );
  }
}
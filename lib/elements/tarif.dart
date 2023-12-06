import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sber_prikol/theme.dart';

class Tarif extends StatelessWidget {
  final String img;
  final String name;
  final String desc;
  final VoidCallback onPressed;

  const Tarif(
      {Key? key,
      required this.img,
      required this.name,
      this.desc = "",
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.all(0),
          backgroundColor: MyColors.white,
          foregroundColor: MyColors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        ),
        onPressed: onPressed,
        child: Container(
            padding:
                const EdgeInsets.only(left: 16, top: 12, right: 0, bottom: 12),
            height: 64,
            child: Row(
              children: [
                Flexible(
                    child: Row(children: [
                  SvgPicture.asset(img),
                  const Padding(padding: EdgeInsets.only(right: 12)),
                  Flexible(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: MyFont.blackw500s16Plus),
                      if (desc != "")
                        Text(desc, style: MyFont.black55w500s14Plus)
                    ],
                  ))
                ])),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 16, top: 8, right: 8, bottom: 8),
                    child: SvgPicture.asset("imgs/disclosure.svg"))
              ],
            )));
  }
}

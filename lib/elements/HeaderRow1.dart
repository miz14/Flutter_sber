import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderRow1 extends StatelessWidget {
  const HeaderRow1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              padding: EdgeInsets.all(8),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6))),
              onPressed: () {},
              icon: SvgPicture.asset(
                  'imgs/close.svg') //Icon(Icons.close, color: Color.fromRGBO(8, 166, 82, 1), size: 24)
              ),
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 14)),
              Image.asset('imgs/avatar.png', width: 110, height: 110),
              Padding(padding: EdgeInsets.only(top: 36)),
              Text('Екатерина')
            ],
          ),
          IconButton(
              padding: EdgeInsets.all(8),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6))),
              onPressed: () {},
              icon: SvgPicture.asset('imgs/exit.svg')),
        ]);
  }
}

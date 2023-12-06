import 'package:flutter/material.dart';

class Sub extends StatelessWidget {

  final String imgAsset;
  final String name;
  final String date;
  final String money;
  const Sub({Key ? key, required this.imgAsset, required this.name, required this.date, required this.money}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Container(
      height: 130,
      width: 216,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Color.fromRGBO(79, 79, 108, 0.07), offset: Offset(0, 8), blurRadius: 14),
          BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08), offset: Offset(0, 2), blurRadius: 10)
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                  Image(image: AssetImage(imgAsset)),
                  const Padding(padding: EdgeInsets.only(right: 12)),
                  Text(name, style: const TextStyle(
                    fontFamily: "SFProText",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.25,
                    letterSpacing: -0.4,
                  ))
                ]),
              const Padding(padding: EdgeInsets.only(bottom: 22)),
              Text(date, style: const TextStyle(
                
                fontFamily: "SFProText",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.28,
                letterSpacing: -0.4
              )),
              const Padding(padding: EdgeInsets.only(bottom: 2)),
              Text(money, style: TextStyle(
                fontFamily: "SFProText",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.28,
                letterSpacing: -0.4,
                color: Colors.black.withOpacity(0.55)
              ))
            ]
          ),
        ),
    );
  }
}
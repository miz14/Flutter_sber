import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Tarif extends StatelessWidget {

  final String img;
  final String name;
  final String desc;
  final VoidCallback onPressed;

  const Tarif({Key ? key, required this.img, required this.name, this.desc = "", required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return FilledButton(
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.all(0),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0)
            ),
          ),
          onPressed: onPressed,
          child: Container(
      padding: const EdgeInsets.only(left: 16, top: 12, right: 0, bottom: 12),
      height: 64,

      child: Row(
        children: [
          Flexible(child:
          Row(
            children: [
              SvgPicture.asset(img),
              const Padding(padding: EdgeInsets.only(right: 12)),
              Flexible(child:
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, overflow: TextOverflow.ellipsis, maxLines: 2,
                    style: const TextStyle(
                      
                
                      fontFamily: "SFProText",
                      fontSize: 16,
                      height: 1.25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    )),
                    if (desc != "") Text(desc, style: TextStyle(
                      fontFamily: "SFProText",
                      fontSize: 14,
                      height: 1.28,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.4,
                      color: Colors.black.withOpacity(0.55)
                    ),)
                  ],
                ))
            ]
          )),
          Padding(padding: const EdgeInsets.only(left: 16, top: 8, right: 8, bottom: 8),
                child: SvgPicture.asset("imgs/disclosure.svg"))
        ],
      )
          ));
      
    //   child: Row(

    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: [
    //             SvgPicture.asset(img),
    //             const Padding(padding: EdgeInsets.only(left: 12)),
    //             Flexible(child:
    //             Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(name, overflow: TextOverflow.ellipsis, maxLines: 2,
    //                 style: const TextStyle(
                      
                
    //                   fontFamily: "SFProText",
    //                   fontSize: 16,
    //                   height: 1.25,
    //                   fontWeight: FontWeight.w500,
    //                   color: Colors.black
    //                 )),
    //                 if (desc != "") Text(desc)
    //               ],
    //             )),
                
    //             Padding(padding: const EdgeInsets.only(left: 16, top: 8, right: 8, bottom: 8),
    //             child: SvgPicture.asset("imgs/disclosure.svg"))
                
    //           ],
    //         )
    //   )

    // );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sber_prikol/elements/HeaderRow1.dart';
import 'package:sber_prikol/elements/HeaderRow2.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 300,

          title: Container(
            height: 300,
            child:
              Column(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeaderRow1(),

                  HeaderRow2()
                ],
              ),
          )
        ),

        body: Text('123')
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //
        //   children: [
        //     IconButton(
        //         padding: EdgeInsets.all(8),
        //         style: ElevatedButton.styleFrom(
        //             shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(0)
        //             )
        //         ),
        //
        //         onPressed: () {},
        //         icon: SvgPicture.asset(
        //             'imgs/close.svg'
        //         ) //Icon(Icons.close, color: Color.fromRGBO(8, 166, 82, 1), size: 24)
        //     ),
        //     Text(''),
        //     IconButton(
        //         padding: EdgeInsets.all(8),
        //         style: ElevatedButton.styleFrom(
        //             shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(0)
        //             )
        //         ),
        //
        //         onPressed: () {},
        //         icon: SvgPicture.asset(
        //             'imgs/exit.svg'
        //         )
        //     ),
        //   ],
        // )
        );
  }
}

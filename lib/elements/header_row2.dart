import 'package:flutter/material.dart';
import 'package:sber_prikol/elements/page_button.dart';

class HeaderRow2 extends StatelessWidget {
  const HeaderRow2({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    ConstrainedBox(constraints: const BoxConstraints(maxHeight: 56), child:
    Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
            color: const Color.fromRGBO(0, 0, 0, 0.12)
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
            Expanded(
              flex: 1,
              child: PageButton(
                  text: "Профиль",
                  backgroundColor: Colors.white,
                  onPressed: (){},
                )
              ),
            Expanded(
              flex: 1,
              child: PageButton(
                text: "Профиль",
                backgroundColor: Colors.white,
                onPressed: (){},
              ),
            )
          ]
        )
      ],
    ),
    );
  }
}

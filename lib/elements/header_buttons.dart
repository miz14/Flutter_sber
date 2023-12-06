import 'package:flutter/material.dart';
import 'package:sber_prikol/elements/page_button.dart';
import 'package:sber_prikol/theme.dart';

class HeaderButtons extends StatelessWidget {
  const HeaderButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: PageButton(
                text: "Профиль",
                backgroundColor: MyColors.white,
                onPressed: () {},
                active: true,
              )),
          Expanded(
            flex: 1,
            child: PageButton(
              text: "Настройки",
              backgroundColor: MyColors.white,
              onPressed: () {},
            ),
          )
        ]);
  }
}

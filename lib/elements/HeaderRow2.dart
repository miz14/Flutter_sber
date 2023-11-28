import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class HeaderRow2 extends StatelessWidget {
  const HeaderRow2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            color: Color.fromRGBO(0, 0, 0, 0.12)
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: GFButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  shape: GFButtonShape.square,
                  fullWidthButton: true,
                  size: 56,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 17)),
                      Text('Профиль',
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                      Padding(padding: EdgeInsets.only(top: 18)),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Color.fromRGBO(6, 132, 65, 1),
                        height: 2,
                      )
                    ],
                  )),
            ),
            Expanded(
              flex: 1,
              child: GFButton(
                padding: EdgeInsets.all(0),
                onPressed: () {},
                shape: GFButtonShape.square,
                fullWidthButton: true,
                size: 56,
                color: Colors.transparent,
                child: Container(
                    width: double.maxFinite,
                    height: 56,
                    child: Center(
                      child: Text('Настройки',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(0, 0, 0, 0.55))),
                    )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

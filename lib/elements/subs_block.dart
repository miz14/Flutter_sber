import 'package:flutter/material.dart';
import 'package:sber_prikol/elements/sub.dart';
import 'package:sber_prikol/elements/title_text.dart';

class SubsBlock extends StatelessWidget {
  const SubsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    Map sub1 = {"img": "imgs/sub1.png", "name" : "СберПрайм", "date" : "Платёж 9 июля", "money" : "199 ₽ в месяц"};
    Map sub2 = {"img": "imgs/sub2.png", "name" : "Переводы", "date" : "Автопродление 21 августа", "money" : "199 ₽ в месяц"};
    var subData = [sub1, sub2];
    return Column(
      children: [
        const TitleText(label: "У вас подключено", desc: "Подписки, автоплатежи и сервисы на которые вы подписались"),
        SizedBox(
          
          height: 130,
          width: double.infinity,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemCount: subData.length,
            itemBuilder: (BuildContext context, int index) {
            return (
              Sub(imgAsset: subData[index]["img"], name: subData[index]["name"], date: subData[index]["date"], money: subData[index]["money"], onPressed: (){})
            );
            },
            separatorBuilder: (BuildContext context, int indx) => const Padding(padding: EdgeInsets.only(right: 8)),
      
          )
        ),
      ],
    );
  }
}
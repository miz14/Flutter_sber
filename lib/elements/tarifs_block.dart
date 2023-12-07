import 'package:flutter/material.dart';
import 'package:sber_prikol/elements/tarif.dart';
import 'package:sber_prikol/elements/title_text.dart';

class TarifsBlock extends StatelessWidget {
  const TarifsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    Map tarif1 = {
      "img": "imgs/lim1.svg",
      "name": "Изменить суточный лимит",
      "desc": "На платежи и переводы"
    };
    Map tarif2 = {
      "img": "imgs/lim2.svg",
      "name": "Переводы без комиссии",
      "desc": "Показать остаток в этом месяце"
    };
    Map tarif3 = {
      "img": "imgs/lim3.svg",
      "name": "Информация о тарифах и лимитах",
      "desc": ""
    };
    var tarifData = [tarif1, tarif2, tarif3];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(
            label: "Тарифы и лимиты", desc: "Для операций в Сбербанк Онлайн"),
        SizedBox(
            height: 64 * 3,
            child: ListView.separated(
              clipBehavior: Clip.none,
              itemCount: tarifData.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return (Tarif(
                    img: tarifData[index]["img"],
                    name: tarifData[index]["name"],
                    desc: tarifData[index]["desc"],
                    onPressed: () {}));
              },
              separatorBuilder: (BuildContext context, int indx) =>
                  const Divider(indent: 16 + 36 + 12, height: 0),
            ))
      ],
    );
  }
}

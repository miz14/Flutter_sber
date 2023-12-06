import 'package:flutter/material.dart';
import 'package:sber_prikol/elements/interest_item.dart';
import 'package:sber_prikol/elements/title_text.dart';

class InterestsBlock extends StatelessWidget {
  const InterestsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    var interes = ["Еда", "Саморазвитие", "Технологии", "Дом", "Досуг", "Забота о себе", "Наука"];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        const TitleText(label: "Интересы", desc: "Мы подбираем истории и предложения по темам, которые вам нравятся"),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child:
          Wrap(
          spacing: 8,
          runSpacing: -8,  
          children: [
            for (int i = 0; i < interes.length; i++) InterestItem(text: interes[i], onPressed: (){})
          ]
          )
        ) 
      ],
    );
  }
}
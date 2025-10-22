import 'package:flutter/material.dart';

import '../constants/custom_color.dart';
import '../constants/custom_text_style.dart';

class PageTitles extends StatelessWidget {
  final String title;
  final String titleParagraph;
  const PageTitles({super.key,required this.title,required this.titleParagraph});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: CustomTextStyle.thirtyTwoThin
              .copyWith(color: CustomColor.blue,height: 1.2),
        ),
        const SizedBox(height: 8),
        Text(
          titleParagraph,
          style: CustomTextStyle.sixteenSemiBoldNeueHaas
              .copyWith(color: CustomColor.blue,height: 1.3),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../constants/custom_color.dart';
import '../constants/custom_text_style.dart';

class FourtySingleBoldRichText extends StatelessWidget {
  final String firstText;
  final String lastText;
  const FourtySingleBoldRichText({super.key,required this.firstText,required this.lastText});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
        children: [
          TextSpan(text: firstText,style: CustomTextStyle.fourtyThin.copyWith(color: CustomColor.black24)),
          TextSpan(text: lastText,style: CustomTextStyle.fourtyMedium.copyWith(color: CustomColor.black24))
        ]
    ));
  }
}

class FourtyDoubleBoldRichText extends StatelessWidget {
  final String firstText;
  final String middleText;
  final String lastText;
  const FourtyDoubleBoldRichText({super.key,required this.firstText,required this.middleText,required this.lastText});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
        style: CustomTextStyle.fourtyThin.copyWith(color: CustomColor.blue,height: 1.2,wordSpacing: -0.4),
        children: [
          TextSpan(text: firstText),
          TextSpan(text: middleText,style: CustomTextStyle.fourtyMedium),
          TextSpan(text: lastText),
        ]
    ));
  }
}

class ThirtyTwoSingleBoldRichText extends StatelessWidget {
  final String firstText;
  final String lastText;
  const ThirtyTwoSingleBoldRichText({super.key,required this.firstText,required this.lastText});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
        children: [
          TextSpan(text: firstText,style: CustomTextStyle.thirtyTwoThin.copyWith(color: CustomColor.black24)),
          TextSpan(text: lastText,style: CustomTextStyle.thirtyTwoMedium.copyWith(color: CustomColor.black24))
        ]
    ));
  }
}

class ThirtyTwoDoubleBoldRichText extends StatelessWidget {
  final String firstText;
  final String middleText;
  final String lastText;
  const ThirtyTwoDoubleBoldRichText({super.key,required this.firstText,required this.middleText,required this.lastText});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
        style: CustomTextStyle.thirtyTwoThin.copyWith(color: CustomColor.blue,height: 1.2,wordSpacing: -0.4),
        children: [
          TextSpan(text: firstText),
          TextSpan(text: middleText,style: CustomTextStyle.thirtyTwoMedium),
          TextSpan(text: lastText),
        ]
    ));
  }
}


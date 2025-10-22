import 'package:flutter/material.dart';

import '../constants/custom_color.dart';
import '../constants/custom_text_style.dart';

class SubmitBtn extends StatelessWidget {
  final String text;
  final Color bgColor;
  VoidCallback? onClick;
  SubmitBtn({super.key,required this.text,required this.bgColor,this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick != null ? onClick : null,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(48),
          boxShadow: [
            BoxShadow(
              color: CustomColor.grey,
              offset: Offset(2, 6),
              blurRadius:14,
              spreadRadius: 7
            )
          ]
        ),
        width: double.infinity,
        child: Center(child: Text(text,style: CustomTextStyle.sixteenMedium.copyWith(color: CustomColor.white),)),
      ),
    );
  }
}

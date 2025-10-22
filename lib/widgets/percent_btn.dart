import 'package:flutter/material.dart';

import '../constants/custom_color.dart';
import '../constants/custom_text_style.dart';

class PercentBtn extends StatelessWidget {
  final String percent;
  VoidCallback? onClick;
  PercentBtn({super.key,required this.percent,this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
        child: Center(
          child: Text(percent,style: CustomTextStyle.fourteenSemiBoldNeueHaas,),
        ),
        decoration: BoxDecoration(
            color: CustomColor.grey,
            borderRadius: BorderRadius.circular(5)
        ),
      ),
    );
  }
}

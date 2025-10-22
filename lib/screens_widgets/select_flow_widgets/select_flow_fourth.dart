import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';

class SelectFlowFourth extends StatelessWidget {
  const SelectFlowFourth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      decoration: BoxDecoration(
          color:CustomColor.grey,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: Icon(Icons.credit_card,color: CustomColor.blue,),
                backgroundColor: CustomColor.white,
              ),
              SizedBox(height: 12,),
              Text('Credit review',style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.black24),),
            ],
          ),
        ],
      ),
    );
  }
}

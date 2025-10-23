import 'package:bread_app/screens/select_flow_final_screens/credit_detail.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';
import '../../notifier.dart';

class SelectFlowFourth extends StatelessWidget {
  const SelectFlowFourth({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectFlowThirdNotifier,
        builder: (context,selectFlowThird,child){
          return selectFlowThird ?
          Container(
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
          )
              :
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CreditDetail()));
            },
            child: Container(
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
                      SizedBox(height: 6,),
                      Text('Final Step',
                        style: CustomTextStyle.fourteenSemiBold.copyWith(
                            color: CustomColor.blue,
                            decoration: TextDecoration.underline),)
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}

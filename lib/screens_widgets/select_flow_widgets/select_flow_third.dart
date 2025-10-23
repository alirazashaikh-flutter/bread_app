import 'package:bread_app/screens/save_deposit/sd_property_goal.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';
import '../../notifier.dart';

class SelectFlowThird extends StatelessWidget {
  const SelectFlowThird({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectFlowThirdNotifier,
      builder: (context, selectFlowThird, child) {
        return selectFlowThird ?
        ValueListenableBuilder(
            valueListenable: selectFlowSecondNotifier,
            builder: (context,selectFlowSecond,child){
              return selectFlowSecond ?  Container(
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
                          child: Icon(Icons.account_balance,color: CustomColor.blue,),
                          backgroundColor: CustomColor.lightGreen,
                        ),
                        SizedBox(height: 12,),
                        Text('Deposit review',style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.black24),),
                      ],
                    ),
                  ],
                ),
              ) :  InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SdPropertyGoal()));
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
                            child: Icon(Icons.account_balance,color: CustomColor.blue,),
                            backgroundColor: CustomColor.lightGreen,
                          ),
                          SizedBox(height: 12,),
                          Text('Deposit review',style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.black24),),
                          SizedBox(height: 4,),
                          Text('Next Step',
                            style: CustomTextStyle.fourteenSemiBold.copyWith(
                                color: CustomColor.blue,
                                decoration: TextDecoration.underline),)
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }) :
        ValueListenableBuilder(
            valueListenable: selectFlowSecondNotifier,
            builder: (context,selectFlowSecond,child){
              return selectFlowSecond ?  Container(
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
                          child: Icon(Icons.account_balance,color: CustomColor.blue,),
                          backgroundColor: CustomColor.lightGreen,
                        ),
                        SizedBox(height: 12,),
                        Text('Deposit review',style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.black24),),
                      ],
                    ),
                  ],
                ),
              ) :  InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SdPropertyGoal()));
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
                            child: Icon(Icons.account_balance,color: CustomColor.blue,),
                            backgroundColor: CustomColor.lightGreen,
                          ),
                          SizedBox(height: 12,),
                          Text('Deposit review',style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.black24),),
                          // SizedBox(height: 4,),
                          // Text('Next Step',
                          //   style: CustomTextStyle.fourteenSemiBold.copyWith(
                          //       color: CustomColor.blue,
                          //       decoration: TextDecoration.underline),)
                        ],
                      ),
                      Container(
                        child: Image.asset('assets/images/checkmark.png'),
                      )
                    ],
                  ),
                ),
              );
            });
      },);
  }
}

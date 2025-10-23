import 'package:flutter/material.dart';
import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';
import '../../notifier.dart';
import '../../screens/property_buying_guide.dart';

class SelectFlowFirst extends StatelessWidget {
  const SelectFlowFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isCompleteNotifier,
        builder: (value,isCompleteNoti , child){
          return isCompleteNoti ?
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PropertyBuyingGuide()));
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
                        child: Icon(Icons.lightbulb_outline,color: CustomColor.blue,),
                        backgroundColor: CustomColor.thinPurple,
                      ),
                      SizedBox(height: 12,),
                      Text('Property buying guide',style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.black24),)
                    ],
                  ),
                  Text('Skip the step',
                    style: CustomTextStyle.fourteenSemiBold.copyWith(
                        color: CustomColor.blue,
                        decoration: TextDecoration.underline),)
                ],
              ),
            ),
          ) :
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
                      child: Icon(Icons.lightbulb_outline,color: CustomColor.blue,),
                      backgroundColor: CustomColor.thinPurple,
                    ),
                    SizedBox(height: 12,),
                    Text('Property buying guide',style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.black24),)
                  ],
                ),
                Container(
                  child: Image.asset('assets/images/checkmark.png'),
                )
              ],
            ),
          );
        });
  }
}

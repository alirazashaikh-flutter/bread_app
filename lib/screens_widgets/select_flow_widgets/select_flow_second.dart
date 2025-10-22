import 'package:flutter/material.dart';
import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';
import '../../notifier.dart';
import '../../screens/select_flow_two_screens/property_buying.dart';

class SelectFlowSecond extends StatelessWidget {
  const SelectFlowSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectFlowSecondNotifier,
        builder: (context,selectFlowSecond,child){
          return selectFlowSecond ?
          ValueListenableBuilder(
              valueListenable: isCompleteNotifier,
              builder: (value,isCompleteNoti,child){
                return isCompleteNoti ?
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
                            child: Icon(Icons.home_outlined,color: CustomColor.lightGreen,),
                            backgroundColor: CustomColor.blue,
                          ),
                          SizedBox(height: 12,),
                          Text('lets see how ready you are to buy a house',style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.black24),),
                          SizedBox(height: 12,),
                          SizedBox()
                        ],
                      ),
                    ],
                  ),
                ) :
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PropertyBuying()));
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
                              child: Icon(Icons.home_outlined,color: CustomColor.lightGreen,),
                              backgroundColor: CustomColor.blue,
                            ),
                            SizedBox(height: 12,),
                            Text('lets see how ready you are to buy a house',style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.black24),),
                            SizedBox(height: 12,),
                            Text('Next step',
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
                      child: Icon(Icons.home_outlined,color: CustomColor.lightGreen,),
                      backgroundColor: CustomColor.blue,
                    ),
                    SizedBox(height: 12,),
                    Text('lets see how ready you are to buy\n a house',style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.black24,height: 1.1),),
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

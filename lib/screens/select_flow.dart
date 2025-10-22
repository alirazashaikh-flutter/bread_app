import 'package:bread_app/constants/custom_color.dart';
import 'package:bread_app/constants/custom_text_style.dart';
import 'package:bread_app/notifier.dart';
import 'package:bread_app/screens/save_deposit/sd_property_goal.dart';
import 'package:bread_app/screens/select_flow_two_screens/property_buying.dart';
import 'package:bread_app/screens/property_buying_guide.dart';
import 'package:bread_app/screens_widgets/select_flow_widgets/select_flow_first.dart';
import 'package:bread_app/screens_widgets/select_flow_widgets/select_flow_fourth.dart';
import 'package:bread_app/screens_widgets/select_flow_widgets/select_flow_second.dart';
import 'package:bread_app/screens_widgets/select_flow_widgets/select_flow_third.dart';
import 'package:bread_app/screens_widgets/select_flow_widgets/select_flow_title.dart';
import 'package:bread_app/widgets/bold_rich_text.dart';
import 'package:flutter/material.dart';

class SelectFlow extends StatefulWidget {
  const SelectFlow({super.key});

  @override
  State<SelectFlow> createState() => _SelectFlowState();


}

class _SelectFlowState extends State<SelectFlow> {
  @override
  // bool isComplete = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ValueListenableBuilder(valueListenable: isCompleteNotifier, builder: (context,isComplete,child){
                  return isComplete ? FourtySingleBoldRichText(firstText: 'Get ', lastText: 'Started')
                      : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Congrats!',style: CustomTextStyle.fourtyMedium.copyWith(color: CustomColor.blue),),
                      SizedBox(height: 20,),
                      ValueListenableBuilder(valueListenable: selectFlowSecondNotifier, builder: (context,selectFlowSecond,child){
                        return selectFlowSecond ? Text('You\'ve taken an important first step! Keep the momentum going—select'
                            ' your next focus to move closer to owning your dream home.',
                          style: CustomTextStyle.sixteenMediumNeueHaas,
                        ) : Text('You\'ve taken a couple of important steps! Keep the momentum going '
                            'and choose your next focus to get closer to owning your dream home.',
                          style: CustomTextStyle.sixteenMediumNeueHaas,
                        ) ;
                      })
                    ],
                  );
                }),
                SizedBox(height: 20,),
                ValueListenableBuilder(
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
                              Container(
                                  child:Text('Skip the step',
                                    style: CustomTextStyle.fourteenSemiBold.copyWith(
                                        color: CustomColor.blue,
                                        decoration: TextDecoration.underline),)
                              )
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
                    }),
                SizedBox(height: 12,),
                ValueListenableBuilder(
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
                    }),
                SizedBox(height: 12,),
                ValueListenableBuilder(
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
                                  Container(
                                    child: Image.asset('assets/images/checkmark.png'),
                                  )
                                ],
                              ),
                            ) :  InkWell(
                              // onTap: (){
                              //   Navigator.push(context, MaterialPageRoute(builder: (context)=> SdPropertyGoal()));
                              // },
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
                                  ],
                                ),
                              ),
                            );
                          });
                    },),
                SizedBox(height: 12,),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

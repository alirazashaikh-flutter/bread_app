import 'package:bread_app/constants/custom_color.dart';
import 'package:bread_app/constants/custom_text_style.dart';
import 'package:bread_app/widgets/select_next_move.dart';
import 'package:bread_app/widgets/submit_btn.dart';
import 'package:flutter/material.dart';

class AffordabilityOverviewScreen extends StatefulWidget {
  const AffordabilityOverviewScreen({super.key});

  @override
  State<AffordabilityOverviewScreen> createState() => _AffordabilityOverviewScreenState();
}

class _AffordabilityOverviewScreenState extends State<AffordabilityOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Affordability Overview',
                  style: CustomTextStyle.thirtyTwoThin.copyWith(color: CustomColor.blue),
                ),
                SizedBox(height: 8,),
                Text('Here\'s what we found based on your salary range and savings.',
                  style: CustomTextStyle.sixteenSemiBoldNeueHaas.copyWith(color: CustomColor.blue),
                ),
                SizedBox(height: 40,),
                Container(
                  decoration: BoxDecoration(
                    color: CustomColor.grey
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('You buy a home worth',
                                style: CustomTextStyle.fourteenMediumNeueHaas.copyWith(color: CustomColor.mehroon)
                              ),
                              SizedBox(height: 8,),
                              Text('£45,000',style: CustomTextStyle.fourtyMedium,)
                            ],
                          ),
                          Image(image: AssetImage('assets/images/checkmark-purple.png'))
                        ],
                      ),
                      SizedBox(height: 32,),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: CustomColor.lightGreen,
                          ),
                          SizedBox(width: 8,),
                          Text('Credit Score',
                            style: CustomTextStyle.fourteenSemiBoldNeueHaas.copyWith(color: CustomColor.blue),
                          )
                        ],
                      ),
                      SizedBox(height: 8,),
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: 48,
                            decoration: BoxDecoration(
                                color: CustomColor.lightGreen,
                                borderRadius: BorderRadius.circular(40)
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 8),
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 48,
                            decoration: BoxDecoration(
                                color: CustomColor.white.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(40)
                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Icon(Icons.credit_score,size: 15,),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: CustomColor.blue
                                    ),
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                ),
                                SizedBox(width: 12,),
                                Text('756',style: CustomTextStyle.fourteenSemiBoldNeueHaas.copyWith(color: CustomColor.blue),)
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  decoration: BoxDecoration(
                      color: CustomColor.grey
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Monthly repayment of',
                              style: CustomTextStyle.fourteenLightNeueHaas.copyWith(color: CustomColor.blue)
                          ),
                          SizedBox(height: 8,),
                          Text('£268',style: CustomTextStyle.twentyFourSemiBoldNeueHaas,)
                        ],
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.add_card,size: 15,),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: CustomColor.blue
                            ),
                            borderRadius: BorderRadius.circular(30)
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                SubmitBtn(
                    text: 'Next',
                    bgColor: CustomColor.black,
                  onClick: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          SelectNextMoveFirst(
                          title: 'Select your next move!',
                          paraGraph: 'You\'ve taken an important first step! Keep the momentum going—select your next focus to move closer to owning your dream home.',
                          boxIcon: Icons.account_balance,
                          boxText: 'Help me save for a deposit'
                      )));
                  },
                )
              ],
            ),
          )),
    );
  }
}

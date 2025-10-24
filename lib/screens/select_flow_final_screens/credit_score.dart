import 'package:bread_app/constants/custom_text_style.dart';
import 'package:bread_app/screens/select_flow_final_screens/short_term_debt.dart';
import 'package:bread_app/widgets/submit_btn.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../../widgets/page_titles.dart';

class CreditScore extends StatelessWidget {
  const CreditScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: CustomColor.white,
        elevation: 0,
        title: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: CustomColor.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.arrow_back_sharp, color: CustomColor.white),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PageTitles(
              title: 'Credit Score Overview',
              titleParagraph: 'Here\'s what we found based on your salary range and savings.',
            ),
            SizedBox(height: 32,),
            Container(
              decoration: BoxDecoration(
                color: CustomColor.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Credit Score',
                        style: CustomTextStyle.fourteenMediumNeueHaas.copyWith(
                          color: CustomColor.mehroon
                        ),
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Text('756',style: CustomTextStyle.fourtyMedium.copyWith(color: CustomColor.black24),),
                          SizedBox(width: 8,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                            decoration: BoxDecoration(
                              color:CustomColor.lightMehroon.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(16)
                            ),
                            child: Text('Out of 900',style: CustomTextStyle.twelveLightNeueHaas.copyWith(color: CustomColor.black24),),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                    decoration: BoxDecoration(
                      color: CustomColor.thinPurple,
                      borderRadius: BorderRadius.circular(19)
                    ),
                    child: Text('Excellent',style: CustomTextStyle.sixteenLightNeueHaas.copyWith(color: CustomColor.blue),),
                  )
                ],
              ),
            ),
            SizedBox(height: 12,),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                  decoration: BoxDecoration(
                      color: CustomColor.grey,
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                            decoration: BoxDecoration(
                                color:CustomColor.lightRed,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: 3,
                                    color: CustomColor.white.withOpacity(0.5),
                                    style: BorderStyle.solid
                                )
                            ),
                            child: Icon(Icons.camera_alt_outlined,color: CustomColor.white,size: 18,),
                          ),
                          SizedBox(width: 12,),
                          Text('You have CCIs & IVAs',style: CustomTextStyle.fourteenLightNeueHaas.copyWith(color: CustomColor.black24),),
                          SizedBox(width: 4,),
                          Icon(Icons.ios_share,size: 12,)
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.emoji_emotions_outlined),
                            backgroundColor: CustomColor.lightGreen,
                            radius: 20,
                          ),
                          SizedBox(width: 12,),
                          Text('You have 10% credit utilization',style: CustomTextStyle.fourteenLightNeueHaas.copyWith(color: CustomColor.black24),),
                          SizedBox(width: 4,),
                          Icon(Icons.ios_share,size: 12,)
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.account_balance),
                            backgroundColor: CustomColor.lightGreen,
                            radius: 20,
                          ),
                          SizedBox(width: 12,),
                          Text('You have no CCIs or IVAs',style: CustomTextStyle.fourteenLightNeueHaas.copyWith(color: CustomColor.black24),),
                          SizedBox(width: 4,),
                          Icon(Icons.ios_share,size: 12,)
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -60,
                  top: -65,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: CustomColor.black.withOpacity(0.049),
                      borderRadius: BorderRadius.circular(150)
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 32,),
            SubmitBtn(
                text: 'Go to Dashboard',
                bgColor: CustomColor.black24,
              onClick: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ShortTermDebt()));
              },
            )
          ],
        ),
      ),
    );
  }
}

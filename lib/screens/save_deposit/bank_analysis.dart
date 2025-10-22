import 'package:bread_app/screens/save_deposit/sd_save_per_month.dart';
import 'package:bread_app/widgets/page_titles.dart';
import 'package:bread_app/widgets/submit_btn.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';

class BankAnalysis extends StatefulWidget {
  const BankAnalysis({super.key});

  @override
  State<BankAnalysis> createState() => _BankAnalysisState();
}

class _BankAnalysisState extends State<BankAnalysis> {
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
          children: [
            PageTitles(
                title: 'Your bank analysis for a month',
                titleParagraph: 'Here\'s what we found based on your salary range and savings.'),
            const SizedBox(height: 40,),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: CustomColor.grey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You spend each month',
                            style: CustomTextStyle.fourteenLightNeueHaas
                                .copyWith(color: CustomColor.blue),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '1200 Rs',
                            style:
                            CustomTextStyle.twentyFourSemiBoldNeueHaas,
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: CustomColor.blue,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(Icons.monetization_on_outlined,
                            size: 15),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 210,
                  bottom: 20,
                  child: CircleAvatar(
                    backgroundColor:
                    CustomColor.black24.withOpacity(0.1),
                    radius: 79,
                  ),
                )
              ],
            ),
            const SizedBox(height: 16,),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: CustomColor.lightGreen,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You earn each month',
                            style: CustomTextStyle.fourteenLightNeueHaas
                                .copyWith(color: CustomColor.blue),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '1500 Rs',
                            style:
                            CustomTextStyle.twentyFourSemiBoldNeueHaas,
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: CustomColor.blue,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(Icons.monetization_on_outlined,
                            size: 15),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 110,
                  bottom: -20,
                  child: CircleAvatar(
                    backgroundColor:
                    CustomColor.black24.withOpacity(0.1),
                    radius: 79,
                  ),
                )
              ],
            ),
            const SizedBox(height: 16,),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: CustomColor.thinPurple,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Each month You can afford to save',
                            style: CustomTextStyle.fourteenLightNeueHaas
                                .copyWith(color: CustomColor.blue),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '300 Rs',
                            style:
                            CustomTextStyle.twentyFourSemiBoldNeueHaas,
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: CustomColor.blue,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(Icons.monetization_on_outlined,
                            size: 15),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 140,
                  top: 20,
                  child: CircleAvatar(
                    backgroundColor:
                    CustomColor.black24.withOpacity(0.1),
                    radius: 79,
                  ),
                )
              ],
            ),
            const SizedBox(height: 40,),
            SubmitBtn(
                text: 'Set goal',
                bgColor: CustomColor.black24,
              onClick: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SdSavePerMonth()));
              },
            )
          ],
        ),
      ),
    );
  }
}

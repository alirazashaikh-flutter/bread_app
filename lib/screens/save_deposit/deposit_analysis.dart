import 'package:bread_app/screens/save_deposit/sd_happens_next_again.dart';
import 'package:bread_app/widgets/page_titles.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';
import '../../widgets/submit_btn.dart';

class DepositAnalysis extends StatefulWidget {
  const DepositAnalysis({super.key});

  @override
  State<DepositAnalysis> createState() => _DepositAnalysisState();
}

class _DepositAnalysisState extends State<DepositAnalysis> {
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
                title: 'Deposit Analysis',
                titleParagraph: 'Here\'s a quick summary of your savings based on your'
                    ' current deposit and the target you set for buying that property.'),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
              decoration: BoxDecoration(
                  color: CustomColor.grey,
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Estimated date you will have your deposit',
                    style: CustomTextStyle.fourteenMediumNeueHaas.copyWith(color: CustomColor.mehroon),
                  ),
                  const SizedBox(height: 12,),
                  Text('10th Jan 2027',
                    style: CustomTextStyle.thirtyTwoThin.copyWith(color: CustomColor.black24),
                  ),
                  const SizedBox(height: 26,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                    decoration: BoxDecoration(
                      color:CustomColor.gray36,
                      borderRadius: BorderRadius.circular(17)
                    ),
                    child: Text('Target Deposit: £10,000',style: CustomTextStyle.sixteenLightNeueHaas.copyWith(color: CustomColor.black24),),
                  )
                ],
              ),
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
                            'income you need to get each month',
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
                            'The most you can spend each month',
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
                  left: 200,
                  bottom: 20,
                  child: CircleAvatar(
                    backgroundColor:
                    CustomColor.black24.withOpacity(0.1),
                    radius: 79,
                  ),
                )
              ],
            ),
            SizedBox(height: 32,),
            SubmitBtn(
              text: 'Confirm',
              bgColor: CustomColor.black24,
              onClick: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> SdHappensNextAgain()));
              },
            )
          ],
        ),
      ),
    );
  }
}

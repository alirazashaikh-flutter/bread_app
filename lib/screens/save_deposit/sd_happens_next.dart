import 'package:bread_app/screens/save_deposit/connect_bank.dart';
import 'package:bread_app/widgets/submit_btn.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';

class SdHappensNext extends StatelessWidget {
  const SdHappensNext({super.key});

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
        padding: EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Align(
              alignment: Alignment.bottomRight,
                child: Image(image: AssetImage('assets/images/castle-dollar.png'),)),
            SizedBox(height: 33,),
            Text(
              'What happens next?',
              style: CustomTextStyle.thirtyTwoThin
                  .copyWith(color: CustomColor.blue),
            ),
            const SizedBox(height: 8),
            Text(
              'We’ll now connect your bank account to determine how much you can '
                  'save monthly and how long it will take to reach your deposit goal.',
              style: CustomTextStyle.sixteenSemiBoldNeueHaas
                  .copyWith(color: CustomColor.blue),
            ),
            const SizedBox(height: 40),
            SubmitBtn(
                text: 'Next',
                bgColor: CustomColor.black,
              onClick: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ConnectBank()));
              },
            )
          ],
        ),
      ),
    );
  }
}

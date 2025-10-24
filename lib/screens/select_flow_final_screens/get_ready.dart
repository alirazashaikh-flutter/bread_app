import 'package:bread_app/constants/custom_color.dart';
import 'package:bread_app/widgets/page_titles.dart';
import 'package:bread_app/widgets/submit_btn.dart';
import 'package:flutter/material.dart';

class GetReady extends StatelessWidget {
  const GetReady({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: Container(
        decoration: BoxDecoration(
          color: CustomColor.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PageTitles(
                title: 'lets get you ready to buy a house',
                titleParagraph: 'Congrats! You’ve nailed all the steps to kick off your journey to save up for a house.',
              ),
              SizedBox(height: 32,),
              SubmitBtn(
                text: 'Go to Dashboard',
                bgColor: CustomColor.black24,
              )
            ],
          ),
        ),
      ),
    );
  }
}

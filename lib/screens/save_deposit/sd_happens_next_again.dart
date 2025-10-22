import 'package:bread_app/screens/save_deposit/sd_next_move.dart';
import 'package:bread_app/widgets/page_titles.dart';
import 'package:bread_app/widgets/select_next_move.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';
import '../../widgets/submit_btn.dart';

class SdHappensNextAgain extends StatelessWidget {
  const SdHappensNextAgain({super.key});

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
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Image(image: AssetImage('assets/images/happens-next-search.png'),width: 84,height: 84,),
                )),
            SizedBox(height: 20,),
            PageTitles(
                title: 'What happens next?',
                titleParagraph: 'We’ll keep an eye on your account each month to ensure you’re meeting your savings'
                    ' target. We’ll also review your spending and update you on your progress.'),
            const SizedBox(height: 40),
            SubmitBtn(
              text: 'Next',
              bgColor: CustomColor.black,
              onClick: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SdNextMove()));
              }
            )
          ],
        ),
      ),
    );
  }
}

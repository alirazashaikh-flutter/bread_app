import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';
import 'onboarding_custom_star.dart';

class OnboardingSavingBox extends StatelessWidget {
  const OnboardingSavingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Transform.rotate(
        angle: 0.2,
        child: Container(
          decoration: BoxDecoration(
              color: CustomColor.blue,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: CustomColor.black,
                    offset: Offset(-2, 3)
                )
              ]
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 11),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('increase your savings',
                    style: CustomTextStyle.fourteenMedium.copyWith(color: CustomColor.lightGreen)),
                SizedBox(width: 3,),
                OnboardingCustomStar(
                  bgColor: CustomColor.lightGreen,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

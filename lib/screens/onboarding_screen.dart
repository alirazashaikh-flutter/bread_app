import 'package:bread_app/constants/custom_color.dart';
import 'package:bread_app/constants/custom_text_style.dart';
import 'package:bread_app/screens/select_flow.dart';
import 'package:bread_app/screens_widgets/onboarding_widgets/onboarding_custom_star.dart';
import 'package:bread_app/screens_widgets/onboarding_widgets/onboarding_saving_box.dart';
import 'package:bread_app/widgets/bold_rich_text.dart';
import 'package:bread_app/widgets/submit_btn.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 13),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                        child: OnboardingSavingBox()),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Transform.translate(
                        offset: Offset(17, 0),
                        child: Transform.rotate(
                          angle: -0.2,
                          child: ColorFiltered(
                            child: Image.asset('assets/images/onboarding-img.jpg',
                              fit: BoxFit.cover,
                            width: 212,
                            height: 162,),
                              colorFilter:  ColorFilter.matrix(<double>[
                                0.2126, 0.7152, 0.0722, 0, 0,
                                0.2126, 0.7152, 0.0722, 0, 0,
                                0.2126, 0.7152, 0.0722, 0, 0,
                                0,      0,      0,      1, 0,
                              ]),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
                    FourtyDoubleBoldRichText(firstText: 'What kind of ', middleText: 'assistance ', lastText: 'do you need?'),
                    Transform.translate(
                      offset: Offset(0, 0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Transform.rotate(
                          angle: -0.3,
                          child: Container(
                            decoration: BoxDecoration(
                              color: CustomColor.thinPurple,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: CustomColor.lightPurple,
                                      offset: Offset(-2, 4)
                                  )
                                ]
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 14,vertical: 17),
                                  child: Text('Build your\ndream house',textAlign: TextAlign.center,style: CustomTextStyle.fourteenMedium.copyWith(color: CustomColor.blue),),
                                ),
                                Positioned(
                                  top: 0,
                                    right: 0,
                                    child: OnboardingCustomStar(bgColor: CustomColor.blue))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                child: SubmitBtn(
                  onClick: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SelectFlow()));
                  },
                  text: 'Get Started',
                  bgColor: CustomColor.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

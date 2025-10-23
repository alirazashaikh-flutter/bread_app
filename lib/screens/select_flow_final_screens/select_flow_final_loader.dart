import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';

class SelectFlowFinalLoader extends StatefulWidget {
  const SelectFlowFinalLoader({super.key});

  @override
  State<SelectFlowFinalLoader> createState() => _SelectFlowFinalLoaderState();
}

class _SelectFlowFinalLoaderState extends State<SelectFlowFinalLoader> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(vsync: this,
        duration: Duration(milliseconds: 500));
    animation = Tween<double>(begin: 0.0 , end: 30.0).animate(animationController);

    animationController.addListener((){
      setState(() {

      });
    });

    animationController.repeat(reverse: true);


    // Timer(Duration(seconds: 3), (){
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BankAnalysis()));
    // });

  }


  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center, // 👈 direct alignment instead of Column center
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 👇 Decorative stack
            Container(
              height: 80,
              width: 60,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Background circles (overlapping)
                  // Blue box on top
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: CustomColor.blue,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: animation.value,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: CustomColor.lightGreen,
                    ),
                  ),
                  Positioned(
                    right: animation.value,
                    top: 0,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: CustomColor.thinPurple,
                    ),
                  ),
                ],
              ),
            ),

            // 👈 spacing between stack and text

            // Text
            Text(
              'Just one moment, we’re just checking your credit score...',
              textAlign: TextAlign.center,
              style: CustomTextStyle.twentyFourSemiBoldNeueHaas.copyWith(
                color: CustomColor.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

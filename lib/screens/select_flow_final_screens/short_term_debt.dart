import 'package:bread_app/constants/custom_text_style.dart';
import 'package:bread_app/screens/select_flow_final_screens/get_ready.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';

class ShortTermDebt extends StatelessWidget {
  const ShortTermDebt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: CustomColor.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
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
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> GetReady()));
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: CustomColor.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.arrow_forward, color: CustomColor.white),
              ),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Short-term debt decreased',style: CustomTextStyle.twentySemiBoldNeueHaas.copyWith(color: CustomColor.black24),),
              SizedBox(height: 6,),
              Text('Here\'s what we found based on your salary range and savings.',
                style: CustomTextStyle.sixteenLightNeueHaas.copyWith(color: CustomColor.black24),
              ),
              SizedBox(height: 12,),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: CustomColor.grey,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Previous Month’s Balance'),
                    SizedBox(height: 6),
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(text: '£',style: CustomTextStyle.twelveBoldNeueHaas.copyWith(color: CustomColor.black24)),
                        TextSpan(text: '4,529',style: CustomTextStyle.twelveLightNeueHaas.copyWith(color: CustomColor.black24))
                      ]
                    ))
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: CustomColor.grey,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Current Month’s Balance'),
                    SizedBox(height: 6),
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(text: '£',style: CustomTextStyle.twelveBoldNeueHaas.copyWith(color: CustomColor.black24)),
                          TextSpan(text: '1,291',style: CustomTextStyle.twelveLightNeueHaas.copyWith(color: CustomColor.black24))
                        ]
                    ))
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('How do we calculate this?',style: CustomTextStyle.sixteenSemiBoldNeueHaas,),
                  SizedBox(height: 8,),
                  Text('Figma ipsum component variant main layer. Ellipse horizontal'
                      ' prototype star select fill. Move comment opacity comment frame'
                      ' layout ellipse figjam image. Image main pencil select figma component'
                      ' auto mask vertical device. Hand ipsum pen union prototype flows horizontal '
                      'undo edit. Ipsum object library flows edit horizontal effect. Inspect project'
                      ' outline reesizing comment connection create. Distribute selection vertical'
                      ' thumbnail inspect.',
                    style: CustomTextStyle.twelveLightNeueHaas.copyWith(color: CustomColor.darkGray),
                  )
                ],
              ),
              SizedBox(height: 24,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('How do we calculate this?',style: CustomTextStyle.sixteenSemiBoldNeueHaas,),
                  SizedBox(height: 8,),
                  Text('Figma ipsum component variant main layer. Ellipse horizontal'
                      ' prototype star select fill. Move comment opacity comment frame'
                      ' layout ellipse figjam image. Image main pencil select figma component'
                      ' auto mask vertical device. Hand ipsum pen union prototype flows horizontal '
                      'undo edit. Ipsum object library flows edit horizontal effect. Inspect project'
                      ' outline reesizing comment connection create. Distribute selection vertical'
                      ' thumbnail inspect.',
                    style: CustomTextStyle.twelveLightNeueHaas.copyWith(color: CustomColor.darkGray),
                  )
                ],
              ),
              SizedBox(height: 24,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('How do we calculate this?',style: CustomTextStyle.sixteenSemiBoldNeueHaas,),
                  SizedBox(height: 8,),
                  Text('Figma ipsum component variant main layer. Ellipse horizontal'
                      ' prototype star select fill. Move comment opacity comment frame'
                      ' layout ellipse figjam image. Image main pencil select figma component'
                      ' auto mask vertical device. Hand ipsum pen union prototype flows horizontal '
                      'undo edit. Ipsum object library flows edit horizontal effect. Inspect project'
                      ' outline reesizing comment connection create. Distribute selection vertical'
                      ' thumbnail inspect.',
                    style: CustomTextStyle.twelveLightNeueHaas.copyWith(color: CustomColor.darkGray),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

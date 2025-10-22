import 'package:bread_app/notifier.dart';
import 'package:flutter/material.dart';

import '../constants/custom_color.dart';
import '../constants/custom_text_style.dart';
import '../screens/select_flow.dart';

class SelectNextMoveFirst extends StatelessWidget {

  final String title;
  final String paraGraph;
  final IconData boxIcon;
  final String boxText;
  VoidCallback? onClick;
  SelectNextMoveFirst({super.key,required this.title,required this.paraGraph,required this.boxIcon,required this.boxText,this.onClick});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: CustomColor.blue,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(Icons.arrow_back_sharp,color: CustomColor.white,),
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: CustomTextStyle.thirtyTwoThin.copyWith(color: CustomColor.blue)
              ),
              SizedBox(height: 8,),
              Text(paraGraph,
                style: CustomTextStyle.sixteenSemiBoldNeueHaas.copyWith(color: CustomColor.blue),),
              SizedBox(height: 40,),
              Stack(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SelectFlow()));
                      selectFlowSecondNotifier.value = !selectFlowSecondNotifier.value;
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: CustomColor.lightGreen
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 1,
                                      color: CustomColor.blue
                                  )
                              ),
                              child: Icon(boxIcon,size: 16,)),
                          SizedBox(height: 16,),
                          Text(boxText,
                            style:CustomTextStyle.fourteenSemiBoldNeueHaas.copyWith(color: CustomColor.blue) ,)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 60,
                    bottom: 30,
                    child: CircleAvatar(
                      backgroundColor: CustomColor.white.withOpacity(0.1),
                      radius: 79,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

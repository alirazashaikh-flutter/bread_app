import 'package:bread_app/constants/custom_color.dart';
import 'package:bread_app/constants/custom_text_style.dart';
import 'package:bread_app/notifier.dart';
import 'package:bread_app/screens/save_deposit/sd_property_goal.dart';
import 'package:bread_app/screens/select_flow_two_screens/property_buying.dart';
import 'package:bread_app/screens/property_buying_guide.dart';
import 'package:bread_app/screens_widgets/select_flow_widgets/select_flow_first.dart';
import 'package:bread_app/screens_widgets/select_flow_widgets/select_flow_fourth.dart';
import 'package:bread_app/screens_widgets/select_flow_widgets/select_flow_second.dart';
import 'package:bread_app/screens_widgets/select_flow_widgets/select_flow_third.dart';
import 'package:bread_app/screens_widgets/select_flow_widgets/select_flow_title.dart';
import 'package:bread_app/widgets/bold_rich_text.dart';
import 'package:flutter/material.dart';

class SelectFlow extends StatefulWidget {
  const SelectFlow({super.key});

  @override
  State<SelectFlow> createState() => _SelectFlowState();


}

class _SelectFlowState extends State<SelectFlow> {
  @override
  // bool isComplete = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectFlowTitle(),
                SizedBox(height: 20,),
                SelectFlowFirst(),
                SizedBox(height: 12,),
                SelectFlowSecond(),
                SizedBox(height: 12,),
                SelectFlowThird(),
                SizedBox(height: 12,),
                SelectFlowFourth()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';
import '../../notifier.dart';
import '../../widgets/bold_rich_text.dart';

class SelectFlowTitle extends StatelessWidget {
  const SelectFlowTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isCompleteNotifier,
        builder: (context,isComplete,child){
          return isComplete ? FourtySingleBoldRichText(firstText: 'Get ', lastText: 'Started')
              : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Congrats!',style: CustomTextStyle.fourtyMedium.copyWith(color: CustomColor.blue),),
              SizedBox(height: 20,),
              ValueListenableBuilder(valueListenable: selectFlowSecondNotifier, builder: (context,selectFlowSecond,child){
                return selectFlowSecond ? Text('You\'ve taken an important first step! Keep the momentum going—select'
                    ' your next focus to move closer to owning your dream home.',
                  style: CustomTextStyle.sixteenMediumNeueHaas,
                ) : Text('You\'ve taken a couple of important steps! Keep the momentum going '
                    'and choose your next focus to get closer to owning your dream home.',
                  style: CustomTextStyle.sixteenMediumNeueHaas,
                ) ;
              })
            ],
          );
        });
  }
}


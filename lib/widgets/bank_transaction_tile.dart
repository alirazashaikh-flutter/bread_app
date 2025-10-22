import 'package:flutter/material.dart';

import '../constants/custom_color.dart';
import '../constants/custom_text_style.dart';

class BankTransactionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  Color? bgColorIcon;
  IconData? icon;
  BankTransactionTile({super.key,required this.title,required this.subtitle,this.bgColorIcon,this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 20,
        child: Icon(icon,color: CustomColor.black,size: 20,),
        backgroundColor: bgColorIcon,
      ),
      title: Padding(
        padding: EdgeInsets.only(bottom: 2),
        child: Text(title,
          style: CustomTextStyle.fourteenSemiBoldNeueHaas.copyWith(color: CustomColor.black24),
        ),
      ),
      subtitle: Text(subtitle,
        style: CustomTextStyle.twelveLightNeueHaas.copyWith(color: CustomColor.black24,height: 1.2),
      ),
      horizontalTitleGap: 12,
    );
  }
}

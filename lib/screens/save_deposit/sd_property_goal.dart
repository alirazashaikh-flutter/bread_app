import 'package:bread_app/screens/save_deposit/sd_deposit_save.dart';
import 'package:bread_app/widgets/page_titles.dart';
import 'package:bread_app/widgets/submit_btn.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';

class SdPropertyGoal extends StatefulWidget {
  const SdPropertyGoal({super.key});

  @override
  State<SdPropertyGoal> createState() => _SdPropertyGoalState();
}

class _SdPropertyGoalState extends State<SdPropertyGoal> {
  final TextEditingController propertyAmountController = TextEditingController();
  bool isPropertyAmount = false;

  @override
  void initState() {
    super.initState();

    // ✅ Correct: Listener defined outside build
    propertyAmountController.addListener(() {
      setState(() {
        isPropertyAmount = propertyAmountController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    propertyAmountController.dispose();
    super.dispose();
  }

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

      // ✅ Proper Scroll Support & Center Alignment
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageTitles(
                  title: 'Property Goal',
                  titleParagraph: 'Enter your target property amount and find out how long it\'ll take to save up.'),
              const SizedBox(height: 40),

              // 🔹 Input Field
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: propertyAmountController,
                  style: CustomTextStyle.fourteenLightNeueHaas
                      .copyWith(color: CustomColor.blue),
                  decoration: InputDecoration(
                    suffixText: 'PKR',
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 14,
                    ),
                    filled: true,
                    fillColor: CustomColor.grey,
                    border: InputBorder.none,
                    labelText: 'Target Property Amount',
                    labelStyle: CustomTextStyle.twelveSemiBoldNeueHaas
                        .copyWith(color: CustomColor.blue),
                  ),
                ),
              ),
              const SizedBox(height: 60),

              // 🔹 Continue Button (Reactive)
              SubmitBtn(
                text: 'Continue',
                bgColor: isPropertyAmount
                    ? CustomColor.black
                    : CustomColor.gray12,
                onClick: isPropertyAmount
                    ? () async{
                  // ✅ Navigate or print
                  print('Amount entered: ${propertyAmountController.text}');
                  var propertyAmount = propertyAmountController.text;
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.setString('property_amount',propertyAmount);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SdDepositSave()));
                  print(sp.getString('property_amount').toString());

                }
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

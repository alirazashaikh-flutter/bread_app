import 'package:bread_app/constants/custom_text_style.dart';
import 'package:bread_app/screens/save_deposit/deposit_analysis.dart';
import 'package:bread_app/widgets/submit_btn.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';

class SdSavePerMonth extends StatefulWidget {
  const SdSavePerMonth({super.key});

  @override
  State<SdSavePerMonth> createState() => _SdSavePerMonthState();
}

class _SdSavePerMonthState extends State<SdSavePerMonth> {

  TextEditingController savePerMonthController = TextEditingController();
  bool isSavePerMonth = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    savePerMonthController.addListener((){
      setState(() {
        isSavePerMonth = savePerMonthController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    savePerMonthController.dispose();
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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                decoration: BoxDecoration(
                  color: CustomColor.grey,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Based on how much you have coming and going out You can afford to save maximum of:',
                      style: CustomTextStyle.fourteenMediumNeueHaas.copyWith(color: CustomColor.mehroon),
                    ),
                    const SizedBox(height: 12,),
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(text: '300 Rs',
                            style:CustomTextStyle.fourtyMedium.copyWith(color: CustomColor.black24)
                        ),
                        TextSpan(text: '/per month',
                          style: CustomTextStyle.twentyThinNeueHaas.copyWith(color: CustomColor.black24)
                        ),
                      ]
                    ))
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Text('How much would you like to save per month?',
                style: CustomTextStyle.thirtyTwoThin.copyWith(color: CustomColor.black24),
              ),
              SizedBox(height: 30,),
              TextFormField(
                keyboardType: TextInputType.phone,
                controller: savePerMonthController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: CustomColor.grey,
                  prefixIcon: Text('Rs',style: TextStyle(color: CustomColor.black24),textAlign: TextAlign.center,),
                  prefixIconConstraints: BoxConstraints(
                    minHeight: 12,
                    minWidth: 40
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              SubmitBtn(
                  text: 'Submit',
                  bgColor: isSavePerMonth ?
                      CustomColor.black24 :
                      CustomColor.gray24,
                 onClick: isSavePerMonth ? (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> DepositAnalysis()));
                 } : null,
          
              )
            ],
          ),
        ),
      ),
    );
  }
}

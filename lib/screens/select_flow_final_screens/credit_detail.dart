import 'package:bread_app/notifier.dart';
import 'package:bread_app/screens/select_flow_final_screens/select_flow_final_loader.dart';
import 'package:bread_app/widgets/page_titles.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';
import '../../widgets/submit_btn.dart';

class CreditDetail extends StatefulWidget {
  const CreditDetail({super.key});

  @override
  State<CreditDetail> createState() => _CreditDetailState();
}

class _CreditDetailState extends State<CreditDetail> {

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    void checkCreditForm(){
      if(
      firstNameController.text.isNotEmpty &&
          lastNameController.text.isNotEmpty &&
          dateOfBirthController.text.isNotEmpty &&
          addressController.text.isNotEmpty
      ){
        isCreditDetailNotifier.value = true;
      }else{
        isCreditDetailNotifier.value = false;
      }
    }
    firstNameController.addListener(checkCreditForm);
    lastNameController.addListener(checkCreditForm);
    dateOfBirthController.addListener(checkCreditForm);
    addressController.addListener(checkCreditForm);
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
              PageTitles(
                  title: 'Let us get to know you...',
                  titleParagraph: 'Help us out so we can give you an overview of your affordability.'
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.41,
                      child: TextFormField(
                        controller: firstNameController,
                        keyboardType: TextInputType.name,
                        style: CustomTextStyle.fourteenLightNeueHaas.copyWith(
                          color: CustomColor.blue,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: CustomColor.grey,
                          labelText: 'First Name',
                          labelStyle: CustomTextStyle.twelveSemiBoldNeueHaas
                              .copyWith(color: CustomColor.blue),
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.41,
                      child: TextFormField(
                        controller: lastNameController,
                        keyboardType: TextInputType.name,
                        style: CustomTextStyle.fourteenLightNeueHaas.copyWith(
                          color: CustomColor.blue,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: CustomColor.grey,
                          labelText: 'Last Name',
                          labelStyle: CustomTextStyle.twelveSemiBoldNeueHaas
                              .copyWith(color: CustomColor.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextFormField(
                    controller: dateOfBirthController,
                    keyboardType: TextInputType.datetime,
                    style: CustomTextStyle.fourteenLightNeueHaas.copyWith(
                      color: CustomColor.blue,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: CustomColor.grey,
                      labelText: 'Date of birth',
                      hintText: 'DD/MM/YYYY',
                      labelStyle: CustomTextStyle.twelveSemiBoldNeueHaas
                          .copyWith(color: CustomColor.blue),
                      suffixIcon: Icon(
                        Icons.calendar_today_sharp,
                        color: CustomColor.thinPurple,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextFormField(
                    controller: addressController,
                    keyboardType: TextInputType.streetAddress,
                    style: CustomTextStyle.fourteenLightNeueHaas.copyWith(
                      color: CustomColor.blue,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: CustomColor.grey,
                      labelText: 'Address',
                      hintText: 'Street & city...',
                      labelStyle: CustomTextStyle.twelveSemiBoldNeueHaas
                          .copyWith(color: CustomColor.blue),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12,),
              ValueListenableBuilder(
                  valueListenable: isCreditDetailNotifier ,
                  builder: (context,isCreditDetail,child){
                    return ValueListenableBuilder(
                        valueListenable: isCreditSwitchClickedNotifier,
                        builder: (context,isCreditSwitchClicked,child){
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    activeColor: CustomColor.blue,
                                    checkColor: CustomColor.lightGreen,
                                    value: isCreditSwitchClicked,
                                    onChanged: isCreditDetail
                                        ? (bool? value) {
                                      isCreditSwitchClickedNotifier.value = value ?? false;
                                    }
                                        : null, // 🚫 disable jab form filled na ho
                                  ),
                                  Flexible(
                                    child: Text(
                                      'I understand that Bread may use information from third-party sources to obtain my credit report.',
                                      style: CustomTextStyle.fourteenLightNeueHaas,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              isCreditSwitchClicked! ? SubmitBtn(
                                text: 'Authorise Credit Check',
                                bgColor: CustomColor.black,
                                onClick: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SelectFlowFinalLoader(),
                                    ),
                                  );
                                },
                              )
                                  : SubmitBtn(
                                text: 'Authorise Credit Check',
                                bgColor: CustomColor.gray12,
                              ),
                            ],
                          );
                        });
                  })
            ],
          ),
        ),
      ),
    );
  }
}

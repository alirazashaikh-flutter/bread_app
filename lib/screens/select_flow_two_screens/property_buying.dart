import 'package:bread_app/constants/custom_text_style.dart';
import 'package:bread_app/notifier.dart';
import 'package:bread_app/screens/select_flow_two_screens/loading_screen.dart';
import 'package:bread_app/widgets/submit_btn.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';

class PropertyBuying extends StatefulWidget {
  const PropertyBuying({super.key});

  @override
  State<PropertyBuying> createState() => _PropertyBuyingState();
}

class _PropertyBuyingState extends State<PropertyBuying> {

  String? selectedStatus; // yeh state variable banana hoga
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dateBirthController = TextEditingController();
  TextEditingController employStatusController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  TextEditingController currentSavingController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  FocusNode firstNameNode = FocusNode();
  FocusNode lastNameNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    void checkForm() {
      if (firstNameController.text.isNotEmpty &&
          lastNameController.text.isNotEmpty &&
          dateBirthController.text.isNotEmpty &&
          employStatusController.text.isNotEmpty &&
          salaryController.text.isNotEmpty &&
          currentSavingController.text.isNotEmpty &&
          addressController.text.isNotEmpty) {
        isFormFilledNotifier.value = true;
      } else {
        isFormFilledNotifier.value = false;
      }
    }

    firstNameController.addListener(checkForm);
    lastNameController.addListener(checkForm);
    dateBirthController.addListener(checkForm);
    employStatusController.addListener(checkForm);
    salaryController.addListener(checkForm);
    currentSavingController.addListener(checkForm);
    addressController.addListener(checkForm);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    dateBirthController.dispose();
    employStatusController.dispose();
    salaryController.dispose();
    currentSavingController.dispose();
    addressController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: CustomColor.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.arrow_back_sharp, color: CustomColor.white),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Let us get to know you...',
                  style: CustomTextStyle.thirtyTwoThin.copyWith(
                    color: CustomColor.blue,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Help us out so we can give you an overview of your affordability.',
                  style: CustomTextStyle.sixteenSemiBoldNeueHaas.copyWith(
                    color: CustomColor.blue,
                  ),
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
                          keyboardType: TextInputType.name,
                          controller: firstNameController,
                          focusNode: firstNameNode,
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
                          keyboardType: TextInputType.name,
                          controller: lastNameController,
                          focusNode: lastNameNode,
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
                      keyboardType: TextInputType.datetime,
                      controller: dateBirthController,
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
                    child: DropdownButtonFormField<String>(
                      icon: SizedBox.shrink(),
                    value: selectedStatus,
                    onChanged: (value) {
                      setState(() {
                        selectedStatus = value;
                        employStatusController.text = value!; // controller bhi update ho jaye
                      });
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: CustomColor.grey,
                      labelText: 'Employment Status',
                      hintText: 'e.g Employed Full Time',
                      labelStyle: CustomTextStyle.twelveSemiBoldNeueHaas.copyWith(
                        color: CustomColor.blue,
                      ),
                      suffixIcon: Icon(
                        Icons.file_download,
                        color: CustomColor.thinPurple,
                      ),
                    ),
                    style: CustomTextStyle.fourteenLightNeueHaas.copyWith(
                      color: CustomColor.blue,
                    ),
                    items: [
                      'Employed Full Time',
                      'Employed Part Time',
                      'Self Employed',
                      'Unemployed',
                      'Student',
                    ].map((status) {
                      return DropdownMenuItem<String>(
                        value: status,
                        child: Text(
                          status,
                          style: CustomTextStyle.fourteenLightNeueHaas.copyWith(
                            color: CustomColor.blue,
                          ),
                        ),
                      );
                    }).toList(),
                  )
                  ,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.41,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: salaryController,
                          style: CustomTextStyle.fourteenLightNeueHaas.copyWith(
                            color: CustomColor.blue,
                          ),
                          decoration: InputDecoration(
                            suffixText: 'PKR',
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 12,
                            ),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: CustomColor.grey,
                            labelText: 'Salary',
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
                          keyboardType: TextInputType.number,
                          controller: currentSavingController,
                          style: CustomTextStyle.fourteenLightNeueHaas.copyWith(
                            color: CustomColor.blue,
                          ),
                          decoration: InputDecoration(
                            suffixText: 'PKR',
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 12,
                            ),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: CustomColor.grey,
                            labelText: 'Current Savings',
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
                      keyboardType: TextInputType.multiline,
                      controller: addressController,
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
                SizedBox(height: 12),
            ValueListenableBuilder(
              valueListenable: isFormFilledNotifier,
              builder: (context, isFormFilled, child) {
                return ValueListenableBuilder(
                  valueListenable: isSwitchClickedNotifier,
                  builder: (context, isSwitchClicked, child) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: CustomColor.blue,
                              checkColor: CustomColor.lightGreen,
                              value: isSwitchClicked,
                              onChanged: isFormFilled
                                  ? (bool? value) {
                                isSwitchClickedNotifier.value = value ?? false;
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
                        isSwitchClicked! ? SubmitBtn(
                          text: 'Authorise Credit Check',
                          bgColor: CustomColor.black,
                          onClick: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoadingScreen(),
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
                  },
                );
              },
            )
            ],
            ),
          ),
        ),
      ),
    );
  }
}

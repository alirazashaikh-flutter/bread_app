import 'package:bread_app/screens/save_deposit/sd_happens_next.dart';
import 'package:bread_app/widgets/submit_btn.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';
import '../../widgets/page_titles.dart';

class SdDepositSave extends StatefulWidget {
  const SdDepositSave({super.key});

  @override
  State<SdDepositSave> createState() => _SdDepositSaveState();
}

class _SdDepositSaveState extends State<SdDepositSave> {
  List<String> percent = ['5%', '10%', '15%', '20%', '25%', '30%'];
  int currentPercentIndex = 0;
  double propertyAmount = 0.0;

  @override
  void initState() {
    super.initState();
    getPropertyAmount();
  }

  Future<void> getPropertyAmount() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    final storedValue = sp.getString('property_amount') ?? '0';
    setState(() {
      propertyAmount = double.tryParse(storedValue) ?? 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // selected percent (remove % sign and convert to double)
    double selectedPercent = double.parse(percent[currentPercentIndex].replaceAll('%', ''));
    // calculate deposit amount
    double depositAmount = propertyAmount * (selectedPercent / 100);

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageTitles(
                title: 'What deposit would you like to save?',
                titleParagraph: 'Just fill in your details to check out your goal and find out how long it\'ll take to save up!'),
            const SizedBox(height: 40),

            // 🔹 Property Info Card
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: CustomColor.lightGreen,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Target property amount',
                            style: CustomTextStyle.fourteenLightNeueHaas
                                .copyWith(color: CustomColor.blue),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '${propertyAmount.toStringAsFixed(0)} Rs',
                            style:
                            CustomTextStyle.twentyFourSemiBoldNeueHaas,
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: CustomColor.blue,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(Icons.monetization_on_outlined,
                            size: 15),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 210,
                  bottom: 20,
                  child: CircleAvatar(
                    backgroundColor:
                    CustomColor.black24.withOpacity(0.1),
                    radius: 79,
                  ),
                )
              ],
            ),

            const SizedBox(height: 40),

            // 🔹 Calculated Deposit Amount
            Center(
              child: Text(
                '${depositAmount.toStringAsFixed(1)} Rs',
                style: CustomTextStyle.fourtyMedium
                    .copyWith(color: CustomColor.black24),
              ),
            ),
            const SizedBox(height: 2),
            Center(
              child: Text(
                '${percent[currentPercentIndex]}',
                style: CustomTextStyle.fourteenSemiBoldNeueHaas
                    .copyWith(color: CustomColor.black24),
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 Percent Buttons
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: percent.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentPercentIndex = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7, vertical: 7),
                        decoration: BoxDecoration(
                          color: CustomColor.grey,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 2,
                            color: currentPercentIndex == index
                                ? CustomColor.lightGreen
                                : Colors.transparent,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            percent[index],
                            style:
                            CustomTextStyle.fourteenSemiBoldNeueHaas,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 40),
            
            SubmitBtn(
                text: 'Continue',
                bgColor: CustomColor.black,
              onClick: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SdHappensNext()));
              },
            )
          ],
        ),
      ),
    );
  }
}

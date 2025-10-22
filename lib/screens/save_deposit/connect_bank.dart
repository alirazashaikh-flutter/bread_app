import 'package:bread_app/screens/save_deposit/connect_to_bank.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_color.dart';
import '../../constants/custom_text_style.dart';

class ConnectBank extends StatefulWidget {
  const ConnectBank({super.key});

  @override
  State<ConnectBank> createState() => _ConnectBankState();
}

class _ConnectBankState extends State<ConnectBank> {
  
  List<Map<String, String>> banks = [
    {
      'name': 'Barclays Bank',
      'image': 'assets/images/bank-image (10).png',
    },
    {
      'name': 'HSBC Holdings',
      'image': 'assets/images/bank-image (9).png',
    },
    {
      'name': 'Lloyds Bank',
      'image': 'assets/images/bank-image (8).png',
    },
    {
      'name': 'NatWest Bank',
      'image': 'assets/images/bank-image (7).png',
    },
    {
      'name': 'Santander UK',
      'image': 'assets/images/bank-image (6).png',
    },
    {
      'name': 'Royal Bank of Scotland',
      'image': 'assets/images/bank-image (5).png',
    },
    {
      'name': 'TSB Bank',
      'image': 'assets/images/bank-image (4).png',
    },
    {
      'name': 'Metro Bank',
      'image': 'assets/images/bank-image (3).png',
    },
    {
      'name': 'Monzo',
      'image': 'assets/images/bank-image (2).png',
    },
    {
      'name': 'Apex Bank',
      'image': 'assets/images/bank-image (1).png',
    },
    {
      'name':  'Amber Trust Bank',
      'image': 'assets/images/bank-image (11).png',
    },
  ];


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
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Connect a bank',
                      style: CustomTextStyle.thirtyTwoThin
                          .copyWith(color: CustomColor.blue),
                    ),
                    Image(image: AssetImage('assets/images/connect-bank-1.png'),width: 65,height: 78,)
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Let Bread check out your bank account details to keep an eye on your savings and balance.',
                  style: CustomTextStyle.sixteenSemiBoldNeueHaas
                      .copyWith(color: CustomColor.blue),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  style: CustomTextStyle.fourteenMediumNeueHaas.copyWith(color: CustomColor.black),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: 'Search',
                    fillColor: CustomColor.grey,
                    filled: true,
                    hintStyle: CustomTextStyle.fourteenLightNeueHaas.copyWith(color: CustomColor.gray24),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 4),
                      child: Icon(Icons.search,color: CustomColor.gray24,),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 30, // default 48 hota hai, isko kam karo
                      minHeight: 30,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(4)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text('Most Popular',style: CustomTextStyle.twelveSemiBoldNeueHaas.copyWith(color: CustomColor.black24),),
                const SizedBox(height: 8),
                Expanded(
                  child: ListView.builder(
                      itemCount: banks.length,
                      itemBuilder: (context,index){
                        return ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ConnectToBank(
                              bankName: banks[index]['name']!,
                              bankImage: banks[index]['image']!,
                            )));
                          },
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: CustomColor.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: CircleAvatar(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image(image: AssetImage(banks[index]['image']!,),width: 32,height: 32,)),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          title: Text(banks[index]['name']!,style: CustomTextStyle.sixteenLightNeueHaas.copyWith(color: CustomColor.black24),),
                        );
                      }),
                )

              ],
            ),
            Positioned(
              bottom: 20,
              right: 0,
              child: CircleAvatar(
                radius: 22,
                child: Image(image: AssetImage('assets/images/bubble-chat-question.png'),width: 28,height: 28,),
                backgroundColor: CustomColor.lightGreen,
              ),
            )
          ],
        ),
      ),
    );
  }
}

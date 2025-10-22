import 'package:bread_app/constants/custom_text_style.dart';
import 'package:bread_app/screens/save_deposit/sd_loader.dart';
import 'package:bread_app/widgets/bank_transaction_tile.dart';
import 'package:bread_app/widgets/submit_btn.dart';
import 'package:flutter/material.dart';
import '../../constants/custom_color.dart';

class ConnectToBank extends StatefulWidget {

  final String bankName;
  final String bankImage;

  const ConnectToBank({super.key,required this.bankName,required this.bankImage});

  @override
  State<ConnectToBank> createState() => _ConnectToBankState();
}

class _ConnectToBankState extends State<ConnectToBank> {
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

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children:[ SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),

                // 🌟 Bank Info Card
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Card background
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                          top: 40, bottom: 20, left: 16, right: 16),
                      decoration: BoxDecoration(
                        color: CustomColor.grey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Text('Connect to ${widget.bankName}',
                            style: CustomTextStyle.twentySemiBoldNeueHaas
                                .copyWith(color: CustomColor.black24),
                          ),
                          const SizedBox(height: 7),
                          Text(
                            'Connecting your bank account is super quick, safe, and dependable!',
                            textAlign: TextAlign.center,
                            style: CustomTextStyle.sixteenLightNeueHaas
                                .copyWith(color: CustomColor.black24),
                          ),
                        ],
                      ),
                    ),

                    // 🌟 Bank Logo (floating)
                    Positioned(
                      top: -30,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container( width: 60, height: 60,
                          decoration: BoxDecoration(
                            color: CustomColor.grey,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              )
                            ],
                          ),
                          child: CircleAvatar(
                            child: ClipRRect( borderRadius: BorderRadius.circular(25),
                                child: Image(image: AssetImage(widget.bankImage),width: 50,height: 50,)),
                            backgroundColor: Colors.transparent, ), ), ),
                      ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 20,bottom: 20,left: 12,right: 24),
                  decoration: BoxDecoration(
                    color: CustomColor.grey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Give us only permission to read',
                        style: CustomTextStyle.sixteenSemiBoldNeueHaas.copyWith(color: CustomColor.black24),
                      ),
                      // SizedBox(height: 16,),
                      BankTransactionTile(
                          title: 'Account Balances',
                          subtitle: 'To see all your balances in one place and track them in  our app',
                        icon: Icons.account_balance,
                        bgColorIcon: CustomColor.lightGreen,
                      ),
                      BankTransactionTile(
                          title: 'Transaction Data',
                          subtitle: 'Tu budget smarter and see how your spending  changes over time',
                        icon: Icons.compare_arrows_rounded,
                        bgColorIcon: CustomColor.thinPurple,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 20,bottom: 20,left: 12,right: 24),
                  decoration: BoxDecoration(
                    color: CustomColor.grey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your information is safe & secure',
                        style: CustomTextStyle.sixteenSemiBoldNeueHaas.copyWith(color: CustomColor.black24),
                      ),
                      // SizedBox(height: 16,),
                      BankTransactionTile(
                        title: 'Read only access',
                        subtitle: 'No one can transfer money from bread, not even you',
                        icon: Icons.account_balance,
                        bgColorIcon: CustomColor.lightGreen,
                      ),
                      BankTransactionTile(
                        title: '90 days consent',
                        subtitle: 'Every 90 days we will ask you if you are still happy to be connected to bread',
                        icon: Icons.compare_arrows_rounded,
                        bgColorIcon: CustomColor.thinPurple,
                      ),
                      BankTransactionTile(
                        title: 'Cancel anytime',
                        subtitle: 'You can deactivate this connection straight from your banking app',
                        icon: Icons.compare_arrows_rounded,
                        bgColorIcon: CustomColor.thinPurple,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text('We use 256-bit encryption to connect to your bank.',
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.fourteenSemiBoldNeueHaas.copyWith(color: CustomColor.black24),
                  ),
                ),
                const SizedBox(height: 12),
                SubmitBtn(
                    text: 'Confirm',
                    bgColor: CustomColor.black24,
                  onClick: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SdLoader()));
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),

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
          ]
        ),
      ),
    );
  }
}

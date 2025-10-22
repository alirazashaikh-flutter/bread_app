import 'package:bread_app/notifier.dart';
import 'package:bread_app/widgets/bold_rich_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/custom_color.dart';
import '../constants/custom_text_style.dart';

class PageView1 extends StatelessWidget {
  const PageView1({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        padding: EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ThirtyTwoDoubleBoldRichText(firstText: 'How Do ', middleText: 'Mortgages ', lastText: 'Work?'),
            ),
            SizedBox(height: 55,),
            Align(
              alignment: Alignment.bottomRight,
              child: Transform.translate(
                offset: Offset(17, 0),
                child: Transform.rotate(
                  angle: 0.1,
                  child: ColorFiltered(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: CustomColor.gray12,
                                offset: Offset(10, 10)
                            )
                          ]
                      ),
                      child: Image.asset('assets/images/mortgages-img.png',
                        fit: BoxFit.cover,
                        width: 212,
                        height: 162,),
                    ),
                    colorFilter:  ColorFilter.matrix(<double>[
                      0.2126, 0.7152, 0.0722, 0, 0,
                      0.2126, 0.7152, 0.0722, 0, 0,
                      0.2126, 0.7152, 0.0722, 0, 0,
                      0,      0,      0,      1, 0,
                    ]),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('A mortgage is a type of loan used to purchase a home or other real estate.'
                  ' The borrower (often called the mortgagor) agrees to pay back the loan over time,'
                  ' typically through monthly payments, with interest.',
                style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.blue,height: 1.1,letterSpacing: 0.1,),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(' The property itself serves as collateral for the loan, meaning that if the borrower'
                  ' fails to repay the mortgage, the lender (often a bank or mortgage company) can'
                  ' take possession of the property through a legal process called foreclosure.',
                style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.blue,height: 1.1,letterSpacing: 0.1,),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageView2 extends StatelessWidget {
  const PageView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60),
      child: Column(
        children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset('assets/images/message-dollar-icon.png',width: 77,height: 77,),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ThirtyTwoSingleBoldRichText(firstText: 'Qualifying for a Mortgages-', lastText: 'Salary'),
          ),
          SizedBox(height: 27,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Transform.rotate(
              angle: -0.05,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: CustomColor.thinPurple
                ),
                child: Text('Qualifying for a mortgage largely depends on your salary and overall financial profile. '
                    'Lenders assess your ability to repay the loan by evaluating your income, debt, credit score, '
                    'and financial stability.',
                  style: CustomTextStyle.sixteenSemiBoldNeueHaas.copyWith(color: CustomColor.blue),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Here\'s how your salary factors into mortgage qualification:',
              style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.blue),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                Row(
                  children: [
                    Transform.rotate(
                        angle: 0.4,
                        child: Icon(Icons.star_purple500_outlined,color: CustomColor.lightGreen,size: 20,)),
                    SizedBox(width: 5,),
                    Text('Gross monthly income',style: CustomTextStyle.sixteenLightNeueHaas.copyWith(color: CustomColor.blue),)
                  ],
                ),
                Row(
                  children: [
                    Transform.rotate(
                        angle: 0.4,
                        child: Icon(Icons.star_purple500_outlined,color: CustomColor.lightGreen,size: 20,)),
                    SizedBox(width: 5,),
                    Text('Stable employment',style: CustomTextStyle.sixteenLightNeueHaas.copyWith(color: CustomColor.blue),)
                  ],
                ),
                Row(
                  children: [
                    Transform.rotate(
                        angle: 0.4,
                        child: Icon(Icons.star_purple500_outlined,color: CustomColor.lightGreen,size: 20,)),
                    SizedBox(width: 5,),
                    Text('Loan ammount',style: CustomTextStyle.sixteenLightNeueHaas.copyWith(color: CustomColor.blue),)
                  ],
                ),
                Row(
                  children: [
                    Transform.rotate(
                        angle: 0.4,
                        child: Icon(Icons.star_purple500_outlined,color: CustomColor.lightGreen,size: 20,)),
                    SizedBox(width: 5,),
                    Text('Interest rates',style: CustomTextStyle.sixteenLightNeueHaas.copyWith(color: CustomColor.blue),)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PageView3 extends StatelessWidget {
  const PageView3({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Transform.scale(
                alignment: Alignment.topCenter,
                scale: 1.5,
                child: ColorFiltered(
                  child: Image.asset('assets/images/dollar-bg.jpg',
                    fit: BoxFit.cover,
                  ),
                  colorFilter:  ColorFilter.matrix(<double>[
                    0.2126, 0.7152, 0.0722, 0, 0,
                    0.2126, 0.7152, 0.0722, 0, 0,
                    0.2126, 0.7152, 0.0722, 0, 0,
                    0,      0,      0,      1, 0,
                  ]),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              verticalDirection: VerticalDirection.up,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Transform.rotate(
                    angle: -0.05,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: CustomColor.lightGreen
                      ),
                      child: Text('Savings play a crucial role in qualifying for a mortgage. Lenders assess your '
                          'savings to ensure you have sufficient funds for a down payment, closing costs,'
                          ' and as a financial cushion to cover future mortgage payments.',
                        style: CustomTextStyle.sixteenSemiBoldNeueHaas.copyWith(color: CustomColor.blue),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Transform.translate(
                    offset: Offset(10, 0),
                    child: Transform.rotate(
                      angle: 0.09,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 21),
                        decoration: BoxDecoration(
                            color: CustomColor.grey
                        ),
                        child: ThirtyTwoSingleBoldRichText(firstText: 'Qualifying for a Mortgages-', lastText: 'Savings'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PageView4 extends StatelessWidget {
  const PageView4({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        padding: EdgeInsets.only(top: 120),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(-30, 0),
              child: Transform.rotate(
                angle: 0.09,
                child: IntrinsicWidth(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 11),
                    decoration: BoxDecoration(
                        color: CustomColor.thinPurple,
                        boxShadow: [
                          BoxShadow(
                              color: CustomColor.lightPurple,
                              offset: Offset(5, 8)
                          )
                        ]
                    ),
                    child: ThirtyTwoSingleBoldRichText(firstText: 'Qualifying for a Mortgages-', lastText: 'Savings'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('Your credit score is key to securing a mortgage. Lenders assess your'
                  ' credit history to gauge how well you manage debt.',
                style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.blue,height: 1.3,letterSpacing: 0.4,),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(' A higher score often leads to better loan options. To qualify,'
                  ' aim for a score of 620 or above, pay bills on time, and keep balances low.',
                style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.blue,height: 1.3,letterSpacing: 0.4,),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30,),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image(image: AssetImage('assets/images/mortgages-meter.png'),width: 82,height: 98,),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Transform.rotate(
                angle: 0.1,
                child: Text(' Improving your credit boosts your chances of getting a favorable mortgage rate.',
                  style: CustomTextStyle.sixteenSemiBoldNeueHaas.copyWith(color: CustomColor.blue),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PageView5 extends StatelessWidget {
  const PageView5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 150),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ThirtyTwoSingleBoldRichText(firstText: 'Other purchase expenses - ', lastText: 'Stamp duty'),
            SizedBox(height: 50,),
            Transform.rotate(
              angle: -0.05,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 30),
                decoration: BoxDecoration(
                    color: CustomColor.grey
                ),
                child: Text('Stamp duty is a tax paid when buying property, and it can be a significant cost.'
                    'The amount varies based on the property\'s price and location.',
                  style: CustomTextStyle.sixteenSemiBoldNeueHaas.copyWith(color: CustomColor.blue),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 80,),
            Text('Be sure to account for this when budgeting for your home purchase, as it’s often required upfront.',
              style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.blue,height: 1.3,letterSpacing: 0.4,),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class PageView6 extends StatelessWidget {
  const PageView6({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        padding: EdgeInsets.only(top: 90),
        child: Column(
          children: [
            Stack(
              children: [
                Transform.translate(
                  offset: Offset(-50,0 ),
                  child: Transform.rotate(
                    angle: -0.2,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 9,
                            color: CustomColor.thinPurple,
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: CustomColor.black,
                                offset: Offset(-1, 5)
                            )
                          ]
                      ),
                      child: ColorFiltered(
                        child: Image.asset('assets/images/legal-fees-img.png',
                          fit: BoxFit.cover,
                          width: 300,
                          height: 186,
                        ),
                        colorFilter:  ColorFilter.matrix(<double>[
                          0.2126, 0.7152, 0.0722, 0, 0,
                          0.2126, 0.7152, 0.0722, 0, 0,
                          0.2126, 0.7152, 0.0722, 0, 0,
                          0,      0,      0,      1, 0,
                        ]),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 10,
                    child: Image(image: AssetImage('assets/images/ink-pod.png')))
              ],
            ),
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ThirtyTwoSingleBoldRichText(firstText: 'Other purchase expenses - ', lastText: 'Legal Fees'),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Legal fees are costs associated with hiring a lawyer to assist '
                  'with the home-buying process. These fees cover services such as reviewing'
                  ' contracts, conducting title searches, and ensuring the transaction complies '
                  'with local laws. It’s important to budget for these expenses, as they can vary'
                  ' based on the complexity of the transaction and the attorney\'s rates.',
                style: CustomTextStyle.sixteenSemiBoldNeueHaas.copyWith(color: CustomColor.blue),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PageView7 extends StatelessWidget {
  const PageView7({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 120),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ThirtyTwoDoubleBoldRichText(firstText: 'Buying a Property - ', middleText: 'Decision ', lastText:'in Principle'),
            SizedBox(height: 45,),
            Transform.rotate(
              angle: -0.1,
              child: DottedBorder(
                color: CustomColor.blue,
                strokeWidth: 2,
                dashPattern: [6, 5],
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 23),
                  decoration: BoxDecoration(
                    color: CustomColor.lightGreen,
                  ),
                  child: Transform.rotate(
                    angle: 0.05,
                    child: Text('A Decision in Principle (DIP) is a preliminary agreement from a lender that'
                        ' indicates how much you can borrow based on your financial situation. ',
                      style: CustomTextStyle.sixteenSemiBoldNeueHaas.copyWith(color: CustomColor.blue),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Text('Obtaining a DIP is a vital step in the property buying process, as it shows sellers'
                ' you are a serious buyer and helps you set a realistic budget. While a DIP is not a'
                ' guarantee of a mortgage, it provides valuable insight into your borrowing capacity,'
                ' making your property search more efficient and focused.',
              style: CustomTextStyle.sixteenMediumNeueHaas.copyWith(color: CustomColor.blue,height: 1.3,letterSpacing: 0.4,),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class PageView8 extends StatelessWidget {
  const PageView8({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select your next move!',
                style: CustomTextStyle.thirtyTwoThin.copyWith(color: CustomColor.blue)
            ),
            SizedBox(height: 8,),
            Text('You\'ve taken an important first step! Keep the momentum going—select'
                ' your next focus to move closer to owning your dream home.',
              style: CustomTextStyle.sixteenSemiBoldNeueHaas.copyWith(color: CustomColor.blue),),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                Navigator.pop(context);
                isCompleteNotifier.value = !isCompleteNotifier.value;
              },
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: CustomColor.thinPurple
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: 1,
                                    color: CustomColor.blue
                                )
                            ),
                            child: Icon(Icons.other_houses_outlined,size: 16,)),
                        SizedBox(height: 16,),
                        Text('Ready to buy a property?',
                          style:CustomTextStyle.fourteenSemiBoldNeueHaas.copyWith(color: CustomColor.blue) ,)
                      ],
                    ),
                  ),
                  Positioned(
                    left: 60,
                    bottom: 30,
                    child: CircleAvatar(
                      backgroundColor: CustomColor.white.withOpacity(0.1),
                      radius: 79,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

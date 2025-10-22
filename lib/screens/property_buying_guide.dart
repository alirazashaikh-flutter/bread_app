import 'package:bread_app/screens_widgets/property_buying_guide_widgets.dart';
import 'package:bread_app/widgets/bold_rich_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/custom_color.dart';
import '../constants/custom_text_style.dart';

class PropertyBuyingGuide extends StatefulWidget {
  const PropertyBuyingGuide({super.key});

  @override
  State<PropertyBuyingGuide> createState() => _PropertyBuyingGuideState();
}

class _PropertyBuyingGuideState extends State<PropertyBuyingGuide> {

  PageController pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            child: Stack(
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (int page){
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    PageView1(),
                    PageView2(),
                    PageView3(),
                    PageView4(),
                    PageView5(),
                    PageView6(),
                    PageView7(),
                    PageView8(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: CustomColor.blue,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(Icons.arrow_back_sharp,color: CustomColor.white,),
                          ),
                        ),
                        _currentPage != 7 ?
                        InkWell(
                          onTap: (){
                            pageController.animateToPage(7,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Skip',
                                style: CustomTextStyle.fourteenSemiBold.copyWith(
                                  color: CustomColor.blue,),),
                              Container(
                                height: 1,
                                width: 28,
                                color: CustomColor.blue,
                              )
                            ],
                          ),
                        ) :
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
                _currentPage != 7 ?
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 7,
                      onDotClicked: (int page){
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      effect: JumpingDotEffect(
                          activeDotColor: CustomColor.blue,
                          dotColor: CustomColor.gray12,
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 5,
                          paintStyle: PaintingStyle.fill
                      ),
                    ),
                  ),
                ) :
                    SizedBox()
              ],
            ),
          )
      ),
    );
  }
}

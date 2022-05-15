import 'package:balanceui/cardholder.dart';
import 'package:balanceui/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

List d = [
  [purple, true],
  [red, false],
  [teal, false],
  [textcolor, false],
  [red, false],
];
int activeIndexs = 0;

class pageOne extends StatefulWidget {
  const pageOne({Key? key}) : super(key: key);

  @override
  State<pageOne> createState() => _pageOneState();
}

class _pageOneState extends State<pageOne> {
  String textchange = 'Pay Now';
     bool changeText = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'May 2018',
            style: TextStyle(
              color: textcolor,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: CarouselSlider.builder(
              options: CarouselOptions(
                height: 400,
                onPageChanged: (index, reason) => setState(() {
                  activeIndexs = index;
                }),
               // autoPlay: true,
               // autoPlayAnimationDuration: Duration(seconds: 2),
                
                enlargeCenterPage: true,

              ),
              itemCount: d.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                activeIndexs = pageViewIndex;
                return cardholder(color: d[itemIndex][0]);
              }),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: AnimatedSmoothIndicator(
                        effect:const WormEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          dotColor: Colors.grey,
                          activeDotColor: purple
                        ),
                        activeIndex: activeIndexs, 
                        count: d.length)
                        ),
                //first rowss
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Stmt',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: textcolor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(rupees + '22300.00',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: textcolor)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'Minimum Due',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: textcolor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(rupees + '22300.00',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: textcolor)),
                        ],
                      ),
                    ],
                  ),
                ),
                //second rows
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Due Date',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: textcolor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('06 May\'19',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: red)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'Pay By',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: textcolor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('04 May\'19',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: textcolor)),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: red),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        '2 days left',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: textcolor),
                      ),
                    ),
                  ),
                ),
       
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: InkWell(
                    
                    onTap: (){
                      setState(() {
                        textchange = changeText?'Pay Now':'Paid';
                        if(changeText){
                          changeText = false;
                          
                        } 
                        else{
                            changeText = true;  
                        }
                       
                      });
                   
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: purple, borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Center(
                          child: Text(
                            textchange,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

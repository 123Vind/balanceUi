import 'package:balanceui/cardholder.dart';
import 'package:balanceui/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

 List d = [[purple,true], [red,false], [teal,false]];
class pageOne extends StatefulWidget {
  const pageOne({Key? key}) : super(key: key);

  @override
  State<pageOne> createState() => _pageOneState();
}

class _pageOneState extends State<pageOne> {
 
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
              initialPage: 1,
              onPageChanged: (index,reason){
                setState(() {
                  
                    for(int i = 0;i<d.length;i++){
                      d.insert([i][1], false);
                    }
                    d.insert([index][1], true);

                    dots(dotsize: d.length, indexs: index);

                //  dots(dotsize: d.length,indexs: index);
                //  for(int i = 0;i<d.length;i++){
                 //   d.insert(i, false);
                 // }
                });
              }
            ),
            itemCount: d.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    cardholder(color: d[itemIndex][0]),
              
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dots(
                  dotsize: 3,
                  indexs: 0,
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
                  child: Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: purple, borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Center(
                        child: Text(
                          'Pay Now',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
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

class dots extends StatefulWidget {
  int dotsize;
  List<bool> s = [];
  int indexs;
  dots({Key? key, required this.dotsize,required this.indexs}) : super(key: key) {
    for (int i = 0; i < dotsize; i++) {
      s.add(false);
    }
    s[indexs] = true;
  }

  @override
  State<dots> createState() => _dotsState();
}

class _dotsState extends State<dots> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.s
          .map((e) => cards(
                size: widget.s.length,
                index: widget.indexs,
                dotselector: e,
              ))
          .toList(),
    );
  }
}

class cards extends StatefulWidget {
  int size;
  int index;
  bool dotselector;
  cards({Key? key, required this.size, required this.index,required this.dotselector}) : super(key: key);

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {

 double length(bool y){
   double x = 8;
   setState(() {
     x = y ? 9 : 8;
   });
   return x;
 }

 Color colorchange(bool x){
   Color machu = Colors.black;
   setState(() {
   
  machu = x ? Colors.black12 : Colors.grey;
   });
   return machu;
 }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: length(widget.dotselector),
        width: length(widget.dotselector),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: colorchange(widget.dotselector)),
      ),
    );
  }
}

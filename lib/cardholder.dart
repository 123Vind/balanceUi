import 'package:balanceui/colors.dart';
import 'package:flutter/material.dart';

class cardholder extends StatefulWidget {
  Color color;
  cardholder({Key? key, required this.color}) : super(key: key);

  @override
  State<cardholder> createState() => _cardholderState();
}

// ignore: camel_case_types
class _cardholderState extends State<cardholder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 4,vertical: 16),
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0.05, 0.05),
                color: Colors.grey,
                blurRadius: 11.0,
                spreadRadius: 1)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Current Balance',
                    style: TextStyle(color: Colors.white, fontSize: 12)),
                Text(
                  rupees + '47400.00',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white),
                      child: const Icon(
                        Icons.balance,
                        color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('HDFC Bank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                          Text(
                            'XXXX XXXX XXXX 9001',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                ),
                          ),
                        ],
                      ),
                    ),
                   
                  ],
                ),
                 Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Exp Date',style: TextStyle(fontSize: 12,color: Colors.white),),
                          Text('12/ 22',style: TextStyle(fontSize: 12,color: Colors.white),),
                        ],
                      ),
                    )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:balanceui/colors.dart';
import 'package:flutter/material.dart';


class cardholder extends StatefulWidget {
  const cardholder({ Key? key }) : super(key: key);

  @override
  State<cardholder> createState() => _cardholderState();
}

class _cardholderState extends State<cardholder> {
  @override
  Widget build(BuildContext context) {
    return   Container(
                height: 50,
                width: MediaQuery.of(context).size.width-35,
              margin: EdgeInsets.all(16),
              color: purple,
            );
  }
}
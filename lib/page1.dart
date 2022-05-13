import 'package:balanceui/cardholder.dart';
import 'package:balanceui/colors.dart';
import 'package:flutter/material.dart';

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
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'May 2019',
            style: TextStyle(
              color: textcolor,
            ),
          ),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
                cardholder(),
                cardholder(),
                cardholder(),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [],
          ),
          
          
        ),
      ],
    );
  }
}


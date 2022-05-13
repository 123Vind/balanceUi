import 'package:balanceui/page1.dart';
import 'package:balanceui/pagetwo.dart';
import 'package:flutter/material.dart';


class balanceui extends StatefulWidget {
  const balanceui({ Key? key }) : super(key: key);

  @override
  State<balanceui> createState() => _balanceuiState();
}

class _balanceuiState extends State<balanceui> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          //first layout
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              child: pageOne(),
            ),
          ),
          //end first layout
          SizedBox(height: 10,),
          //second layout
          Expanded(
            child: pagetwo(),
          )
          //end second layout
        ],
      
    );
  }
}
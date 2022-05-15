import 'package:balanceui/page1.dart';
import 'package:balanceui/pagetwo.dart';
import 'package:flutter/material.dart';

int activeIndex = 0;class balanceui extends StatefulWidget {
  const balanceui({ Key? key }) : super(key: key);

  @override
  State<balanceui> createState() => _balanceuiState();
}

class _balanceuiState extends State<balanceui> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            color: Colors.grey,
            height: 1,
            width: double.infinity,
          ),
          //first layout
          Expanded(
            flex: 3,
            child: Container(
             
              child: const pageOne(),
              decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16)),   
              boxShadow: [
                  BoxShadow(
                  color: Color.fromARGB(255, 201, 200, 200),
                  offset: Offset(1, 1),
                  blurRadius: 5,
                  spreadRadius: 1
              ),
              ]
              
              ),
            ),
          ),
          //end first layout
          SizedBox(
            height: 20,
          ),
          //second layout
          const Expanded(
            child: SingleChildScrollView(
              
              child: pagetwo()),
          )
          //end second layout
        ],
      
    );
  }
}
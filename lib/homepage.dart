import 'package:balanceui/balanceui.dart';
import 'package:balanceui/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          alignment: const Alignment(3, 0),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(30)),
            child: const Icon(
              Icons.person,
              color: bgColor,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Good Morning',
                  style: TextStyle(
                    color: textcolorLight,
                    fontSize: 14,
                  )),
              Text(
                'Jamie Lannister',
                style: TextStyle(
                  color: textcolor,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Icon(
              Icons.add,
              color: purple,
              size: 30,
            ),
          )
        ],
      ),
      body: balanceui(),
    );
  }
}

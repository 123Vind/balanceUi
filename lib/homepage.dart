import 'package:balanceui/balanceui.dart';
import 'package:balanceui/colors.dart';
import 'package:flutter/material.dart';
import 'newui/cardshome.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: purple,
                size: 30,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.grade_outlined,
                color: Colors.black,
                size: 30,
              ),
              label: 'Graph'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
                size: 30,
              ),
              label: 'Notifications'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
              size: 30,
            ),
            label: 'Person',
          ),
        ],
      ),
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
        actions: [
          InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>cardHome()));
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                Icons.add,
                color: purple,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: const balanceui(),
    );
  }
}

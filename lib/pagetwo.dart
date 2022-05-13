import 'package:balanceui/colors.dart';
import 'package:flutter/material.dart';


class pagetwo extends StatefulWidget {
  const pagetwo({ Key? key }) : super(key: key);

  @override
  State<pagetwo> createState() => _pagetwoState();
}

class _pagetwoState extends State<pagetwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(16),
                  width: 50,
                  height: 4,
                  decoration: BoxDecoration(
                    color: textcolorLight,
                    borderRadius: BorderRadius.circular(16)
                  ),
                ),
                Text('Transaction History',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  border: Border.all(color: purple,width: 2),
                                  borderRadius: BorderRadius.circular(30)

                                ),
                              ),
                              Container(
                                width: 1,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: purple
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Life style retail store'),
                              Text('6 may'),
                              Container(decoration: BoxDecoration(
                                color: purple,
                                borderRadius: BorderRadius.circular(16)
                              )
                              ,child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                                child: Text('Follow',style: TextStyle(color: Colors.white),),
                              )),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
    );
  }
}
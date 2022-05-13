import 'package:balanceui/colors.dart';
import 'package:flutter/material.dart';

class cardHome extends StatelessWidget {
  const cardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: secondLayout(),
    );
  }
}

class secondLayout extends StatefulWidget {
  const secondLayout({Key? key}) : super(key: key);

  @override
  State<secondLayout> createState() => _secondLayoutState();
}

class _secondLayoutState extends State<secondLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(

                    height: 40,
                    width: 40,
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),

                  //Text your
                  const Padding(
                    padding: EdgeInsets.only(top: 20,left: 16),
                    child: Text(
                      'Your',
                      style: TextStyle(color: textcolor, fontSize: 28),
                    ),
                  ),
              
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Cards',
                      style: TextStyle(
                          color: textcolor,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  cards(),
                ],
              )
              ),
          Expanded(
              flex: 5,
              child: Container(
                color: purple,
              )),

          //text cards
        ],
      ),
    );
  }
}

class cards extends StatefulWidget {
  const cards({Key? key}) : super(key: key);

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
     width: 200,
      color: red,
    );
  }
}

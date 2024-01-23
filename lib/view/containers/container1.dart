import 'package:flutter/material.dart';
import 'package:multiplatform_apps/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer(),
      desktop: DesktopContainer1(),
    );
  }

  //=======================Mobile==========================

  Widget mobileContainer() {
    return Container(
      child: Column(
        children: [
          Container(
            height: 280,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage(illustration1))),
          ),
          SizedBox(height: 10),
          Text(
            "Track your \nExpenses to \nSave Money",
            style: TextStyle(
                fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1.1),
          ),
          SizedBox(height: 10),
          Text(
            "Helps you to organize your income and expenses",
            style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
          ),
          SizedBox(height: 20),
          Container(
            height: 45,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent),
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down, color: Colors.grey.shade50),
                label: Text(
                  "Try free Demo",
                  style: TextStyle(color: Colors.grey.shade50),
                )),
          ),
          SizedBox(height: 10),
          Text(
            "— Web, iOs and Android",
            style: TextStyle(color: Colors.grey.shade400, fontSize: 17),
          ),
        ],
      ),
    );
  }

  //=======================DeskTop==========================

  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Track your \nExpenses to \nSave Money",
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                SizedBox(height: 20),
                Text(
                  "Helps you to organize your income and expenses",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 17),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrangeAccent),
                          onPressed: () {},
                          icon: Icon(Icons.arrow_drop_down,
                              color: Colors.grey.shade50),
                          label: Text(
                            "Try free Demo",
                            style: TextStyle(color: Colors.grey.shade50),
                          )),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "— Web, iOs and Android",
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 17),
                    ),
                  ],
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            height: 540,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage(illustration1))),
          ))
        ],
      ),
    );
  }
}

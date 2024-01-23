import 'package:flutter/material.dart';

import '../utils/constants.dart';

Widget commonContainer(String text1, text2, text3, image, bool imageLeft) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(children: [
      imageLeft
          ? Expanded(
              child: Container(
                height: 530,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain)),
              ),
            )
          : Container(),
      Expanded(
          child: Column(
        crossAxisAlignment:
            imageLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            text1.toUpperCase(),
            style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            text2,
            textAlign: imageLeft ? TextAlign.right : TextAlign.left,
            style: TextStyle(color: Colors.black, fontSize: w!/20,
            fontWeight: FontWeight.bold,
            height: 1,

            ),
          ),
          SizedBox(height: 10),
          Text(
            text3.toUpperCase(),
            style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
          ),
          SizedBox(height: 20),
          TextButton.icon(
              onPressed: (){}, icon: Icon(Icons.arrow_forward,color: Colors.orange,size: 20,), label: Text("Learn More",style: TextStyle(
            color: Colors.orange
          ),))
        ],
      )),
      !imageLeft ?Expanded(
        child: Container(
          height: 530,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.contain)),
        ),
      ):Container()
    ]),
  );
}

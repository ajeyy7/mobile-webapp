import 'package:flutter/material.dart';

Widget mobileCommonContainer(String text1, text2, text3, image) {
  return Container(
    width: double.infinity,
    child: Column(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain, image: AssetImage(image))),
        ),
        Text(
          text1.toUpperCase(),
          style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
        ),
        const SizedBox(height: 10),
        Text(
          text2,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 36,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            text3.toUpperCase(),
            style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
          ),
        ),
        const SizedBox(height: 20),
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.orange,
              size: 20,
            ),
            label: const Text(
              "Learn More",
              style: TextStyle(color: Colors.orange),
            ))
      ],
    ),
  );
}

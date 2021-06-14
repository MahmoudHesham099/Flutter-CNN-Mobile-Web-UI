import 'package:cnnweb/Data_Components/Data.dart';
import 'package:flutter/material.dart';

class WebCategoriesRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (String category in categories)
              Text(
                category,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
          ],
        ),
        SizedBox(height: 10),
        Divider(thickness: 2, color: Colors.black),
        SizedBox(height: 20),
      ],
    );
  }
}

import 'package:cnnweb/Data_Components/News.dart';
import 'package:flutter/material.dart';

class MobileNewsContainer extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final News news;

  const MobileNewsContainer(
      {Key key, this.screenWidth, this.screenHeight, this.news})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: screenWidth,
          height: screenHeight * 0.4,
          child: Image.asset(
            news.image,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              news.category,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            Text(
              news.date,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          news.h1,
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 1.5,
          ),
        )
      ],
    );
  }
}

import 'package:cnnweb/Data_Components/News.dart';
import 'package:flutter/material.dart';

class WebMainContainer extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final News news;

  const WebMainContainer(
      {Key key, this.screenWidth, this.screenHeight, this.news})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight * 0.65,
          child: Image.asset(
            news.image,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: screenWidth,
          height: screenHeight * 0.65,
          color: Colors.black38,
        ),
        Positioned(
          left: 40,
          bottom: 40,
          child: Text(
            news.h1,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 1.5,
            ),
          ),
        ),
        Positioned(
          left: 40,
          right: 40,
          top: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                news.category,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              Text(
                news.date,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:cnnweb/Data_Components/News.dart';
import 'package:flutter/material.dart';

class WebSecondContainer extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final News news;

  const WebSecondContainer(
      {Key key, this.screenWidth, this.screenHeight, this.news})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: screenWidth * 0.45,
          height: screenHeight * 0.4,
          child: Image.asset(
            news.image,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(width: 40),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth * 0.33,
                height: screenHeight * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              news.category,
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              news.date,
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          news.h1,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          news.h2,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          news.h3,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Read'),
                        SizedBox(width: 5),
                        Container(
                          width: 50,
                          child: Divider(
                            thickness: 1.5,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

import 'package:cnnweb/Data_Components/Data.dart';
import 'package:cnnweb/UI_Components/Mobile/MobileAppBar.dart';
import 'package:cnnweb/UI_Components/Mobile/MobileDrawer.dart';
import 'package:cnnweb/UI_Components/Mobile/MobileNewsContainer.dart';
import 'package:cnnweb/UI_Components/Web/WebAppBar.dart';
import 'package:cnnweb/UI_Components/Web/WebCategoriesRow.dart';
import 'package:cnnweb/UI_Components/Web/WebMainContainer.dart';
import 'package:cnnweb/UI_Components/Web/WebSecondContainer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.width > 650;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xfff6f4f0),
      endDrawer: isWeb(context) ? null : MobileDrawer(),
      appBar: isWeb(context)
          ? WebAppBar(screenWidth: screenWidth)
          : MobileAppBar(scaffoldKey: scaffoldKey),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: ListView(
          children: [
            Divider(thickness: 2, color: Colors.black),
            SizedBox(height: 10),
            isWeb(context) ? WebCategoriesRow() : SizedBox.shrink(),
            Text(
              'BREAKING NEWS',
              style: TextStyle(
                color: Colors.black,
                fontSize: isWeb(context) ? 35 : 30,
              ),
            ),
            SizedBox(height: 20),
            isWeb(context)
                ? WebMainContainer(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    news: news[0],
                  )
                : MobileNewsContainer(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    news: news[0],
                  ),
            SizedBox(height: isWeb(context) ? 40 : 20),
            Divider(thickness: 2, color: Colors.black),
            SizedBox(height: isWeb(context) ? 40 : 20),
            isWeb(context)
                ? WebSecondContainer(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    news: news[1],
                  )
                : MobileNewsContainer(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    news: news[1],
                  ),
            SizedBox(height: isWeb(context) ? 40 : 20),
            isWeb(context)
                ? WebSecondContainer(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    news: news[2],
                  )
                : MobileNewsContainer(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    news: news[2],
                  ),
            SizedBox(height: isWeb(context) ? 40 : 20),
          ],
        ),
      ),
    );
  }
}

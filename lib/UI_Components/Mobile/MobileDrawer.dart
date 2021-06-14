import 'package:cnnweb/Data_Components/Data.dart';
import 'package:cnnweb/UI_Components/General/CurrencyRow.dart';
import 'package:cnnweb/UI_Components/General/TempRow.dart';
import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 10),
            for (String category in categories)
              ListTile(
                title: Text(
                  category,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
            SizedBox(height: 5),
            ListTile(
              title: TempRow(),
            ),
            SizedBox(height: 5),
            ListTile(
              title: CurrencyRow(),
            )
          ],
        ),
      ),
    );
  }
}

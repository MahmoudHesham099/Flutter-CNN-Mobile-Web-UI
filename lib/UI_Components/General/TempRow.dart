import 'package:flutter/material.dart';

class TempRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.wb_sunny_outlined, size: 20, color: Colors.black),
        SizedBox(width: 20),
        Text('24°C', style: TextStyle(fontSize: 12, color: Colors.black))
      ],
    );
  }
}

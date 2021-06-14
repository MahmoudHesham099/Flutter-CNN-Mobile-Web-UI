import 'package:flutter/material.dart';

class CurrencyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text('\$ 2.1', style: TextStyle(fontSize: 12, color: Colors.black)),
            Icon(Icons.arrow_drop_down, color: Colors.red),
          ],
        ),
        SizedBox(width: 10),
        Row(
          children: [
            Text('€ 2.5', style: TextStyle(fontSize: 12, color: Colors.black)),
            Icon(Icons.arrow_drop_down, color: Colors.red),
          ],
        ),
        SizedBox(width: 10),
        Row(
          children: [
            Text('£ 3.1', style: TextStyle(fontSize: 12, color: Colors.black)),
            Icon(Icons.arrow_drop_up, color: Colors.green),
          ],
        ),
      ],
    );
  }
}

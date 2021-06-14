import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MobileAppBar({Key key, this.scaffoldKey}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xfff6f4f0),
      elevation: 0,
      title: Text(
        'CNN',
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            scaffoldKey.currentState.openEndDrawer();
          },
        ),
        SizedBox(width: 10),
      ],
    );
  }
}

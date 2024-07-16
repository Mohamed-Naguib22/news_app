import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 30,
      backgroundColor: Colors.black12,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'News',
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          Text(
            ' App',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange
            ),
          ),
        ],
      )
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
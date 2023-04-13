import 'package:flutter/material.dart';
import 'package:mwp_process/constants.dart';

import '../customs/custom_circle_image.dart';

class ScreenChat extends StatelessWidget {
  const ScreenChat({super.key});

  static String id = 'ScreenChat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimeryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/mwp_process.jpg',
                ),
                radius: 30,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chat',
            ),
          ],
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kPrimeryColor,
        unselectedItemColor: kPrimeryColor,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: "Channels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

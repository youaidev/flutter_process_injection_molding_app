import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomImageCard extends StatelessWidget {
  CustomImageCard({
    super.key,
    required this.textTitle,
    required this.textContent,
    required this.imageCard,
    required this.imageSize,
  });

  String textTitle = "textTitle";
  String textContent = "textContent";
  String imageCard = "assets/images/mwp_process.jpg";
  double imageSize = 60;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageCard,
              width: imageSize,
            ),
          ],
        ),
      ),
    );
  }
}

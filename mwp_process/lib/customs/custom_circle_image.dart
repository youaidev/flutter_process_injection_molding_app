import 'package:flutter/material.dart';

class CustomCircleImage extends StatelessWidget {
  CustomCircleImage({
    this.asset_image,
    this.image_size = 200,
    this.text = '',
    this.text_margin_top = 180,
    this.text_fontSize = 18,
    this.text_size = 35,
  });

  String? asset_image;
  double? image_size;
  String? text;
  double? text_margin_top;
  double? text_fontSize;
  double? text_size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 100,
        ),
        Center(
          child: Container(
            height: image_size!,
            width: image_size!,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('$asset_image'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.blue,
                width: 4.0,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: text_margin_top!),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(35)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.blue,
              ),
              child: SizedBox(
                height: 25 + ((text_size!) / 10),
                width: 150 + text_size!,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(3),
                  child: Text(
                    '$text',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.blue,
                      color: Colors.black,
                      fontSize: text_fontSize!,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

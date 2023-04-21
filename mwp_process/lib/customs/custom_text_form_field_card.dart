import 'package:flutter/material.dart';

class CustomTextFormFieldCard extends StatelessWidget {
  CustomTextFormFieldCard(
      {this.hintText,
      this.labelText,
      this.obscureText = false,
      this.onChanged,
      this.textController,
      this.onTap,
      this.enabled,});

  String? hintText;
  String? labelText;
  bool? obscureText;
  Function(String)? onChanged;

  VoidCallback? onTap;

  String? textController;
  bool? enabled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: TextEditingController(
        text: textController,
      ),

      validator: ((value) {
        if (value!.isEmpty) {
          return 'is empty';
        }
      }),

      onChanged: onChanged,
      enabled: enabled,
      // onTap: () {
      //   enabled = !enabled;
      // },
      maxLines: 1,
      // keyboardType: TextInputType.emailAddress,
      obscureText: obscureText!,
      style: TextStyle(
        color: Colors.black,
      ),

      decoration: InputDecoration(
        // icon: Icon(
        //   Icons.verified_user_outlined,
        //   color: Colors.,
        // ),

        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 10,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 105, 145, 214),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 6, 96, 170),
          ),
          // borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}

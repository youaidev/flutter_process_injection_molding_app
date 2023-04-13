import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    this.hintText,
    this.labelText,
    this.obscureText = false,
    this.onChanged,
  });

  String? hintText;
  String? labelText;
  bool? obscureText;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: ((value) {
        if (value!.isEmpty) {
          return 'is empty';
        }
      }),
      onChanged: onChanged,
      // keyboardType: TextInputType.emailAddress,
      obscureText: obscureText!,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        // icon: Icon(
        //   Icons.verified_user_outlined,
        //   color: Colors.,
        // ),
        filled: true,
        fillColor: Color.fromARGB(136, 44, 42, 42),
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.blue,
          fontSize: 18,
        ),
        hintStyle: TextStyle(
          color: Colors.blue,
          fontSize: 18,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
          // borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}

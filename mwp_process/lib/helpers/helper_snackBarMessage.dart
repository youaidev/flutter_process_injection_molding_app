import 'package:flutter/material.dart';

void helper_snackBarMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 5),
        content: Text(message),
      ),
    );
  }
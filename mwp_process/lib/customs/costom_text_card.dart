import 'package:flutter/material.dart';
import 'package:mwp_process/customs/custom_text_form_field.dart';

import 'custom_text_form_field_card.dart';

class CustomTextCard extends StatelessWidget {
  CustomTextCard({
    this.onTap,
    this.labelText,
    this.textController,
    this.enabled,
  });

  String? labelText = "textContent";

  String? textController;
  VoidCallback? onTap;
  bool? enabled;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CustomTextFormFieldCard(
            labelText: labelText,
            textController: textController,
            onTap: onTap,
            enabled: enabled,
          )
        ],
      ),
    );
  }
}

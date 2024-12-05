import 'package:flutter/material.dart';
import 'package:screen_task/core/Utilities/app_colors.dart';

class FormWidget extends StatefulWidget {
  final String name;
  final bool enabledPasswordField;
  final String keyboard;
  const FormWidget(
      {super.key,
      required this.name,
      required this.enabledPasswordField,
      required this.keyboard});
  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  bool obscure = true;
  TextInputType getKeyboardType() {
    switch (widget.keyboard) {
      case 'text':
        return TextInputType.text;
      case 'number':
        return TextInputType.number;
      case 'email':
        return TextInputType.emailAddress;
      case 'phone':
        return TextInputType.phone;
      case 'date':
        return TextInputType.datetime;
      default:
        return TextInputType.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.enabledPasswordField ? obscure : !obscure,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            width: 2,
          )
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: AppColors.secondary),
          ),
          labelText: widget.name,
          suffixIcon: widget.enabledPasswordField
              ? IconButton(
                  icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
                  onPressed: () => setState(() {
                    obscure = !obscure;
                  }),
                )
              : null),
      keyboardType: getKeyboardType(),
    );
  }
}

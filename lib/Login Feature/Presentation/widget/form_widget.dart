import 'package:flutter/material.dart';
import 'package:medicalapp/core/utilities/app_colors.dart';


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
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            width: 2,
          )
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: AppColors2.secondary),
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

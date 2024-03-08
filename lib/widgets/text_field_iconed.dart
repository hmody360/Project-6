import 'package:flutter/material.dart';
import 'package:flutter_week6_day3_lab/utils/colors.dart';

class TextFieldIconed extends StatelessWidget {
  const TextFieldIconed({
    super.key,
    required this.controller, required this.hintText, required this.label, required this.icon, this.readOnly = false, this.isObscured = false,
  });

  final TextEditingController controller;
  final String hintText;
  final String label;
  final Widget icon;
  final bool? readOnly;
  final bool? isObscured;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: !readOnly!,
      controller: controller,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          floatingLabelStyle: const TextStyle(color: blackColor),
          prefixIcon: icon,
          hintText: hintText,
          labelText: label,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: blackColor, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: blackColor, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(40)),
          )
          ),
          readOnly: readOnly!,
          obscureText: isObscured!,
    );
  }
}
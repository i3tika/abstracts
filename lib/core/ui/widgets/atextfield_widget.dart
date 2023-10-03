import 'package:flutter/material.dart';

class ATextField extends StatelessWidget {
  const ATextField({
    super.key,
    required this.controller,
    required this.validatorFunc,
    this.labelText,
    this.textInputType,
    this.maxLength,
    this.autofocus,
    this.hintText,
  });
  final TextEditingController controller;
  final String? Function(String?)? validatorFunc;
  final String? labelText;
  final TextInputType? textInputType;
  final int? maxLength;
  final bool? autofocus;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      // TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      maxLength: maxLength,
      autofocus: autofocus!,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        // 'Enter your Email',
        labelText: labelText,
        // 'emial',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColorDark,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 1,
          ),
        ),
        contentPadding: const EdgeInsets.all(8),
      ),
      validator: validatorFunc,
      // (value) {
      //   if (value == null || value.isEmpty) {
      //     return 'email is empty';
      //   }
      //   // final isValid = RegExp('rddddd').hasMatch(value);
      //   // if (!isValid) {
      //   //   return '3-24 long ';
      //   // }
      //   return null;
      //   // value == null || value.isEmpty ? 'email is empty' : null;
      // },
    );
  }
}

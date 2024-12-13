import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomPhoneField extends StatelessWidget {
  final String name;
  final bool obscure;
  final String hint;
  final Widget? suffix;
  final Widget? prefix;
  const CustomPhoneField(
      {super.key,
      required this.name,
      this.obscure = false,
      required this.hint,
      this.suffix,
      this.prefix});

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      obscureText: obscure,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        fillColor: const Color(0xffF8F8F8),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        prefix: prefix,
        suffixIcon: suffix,
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xff707680)),
      ),
    );
  }
}

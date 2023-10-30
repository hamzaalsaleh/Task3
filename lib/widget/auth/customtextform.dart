import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontroller;
  final Widget? sufIcon;
  final String? Function(String?)? validator;
  final bool obscureText;
  const CustomTextForm(
      {super.key,
      required this.hinttext,
      required this.mycontroller,
      this.sufIcon,
      required this.validator,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: sufIcon,
        hintText: hinttext,
        hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 184, 184, 184))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: Colors.grey,
            )),
      ),
    );
  }
}

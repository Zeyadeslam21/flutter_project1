import 'package:flutter/material.dart';
class text_fild extends StatelessWidget {
  const text_fild({super.key,required this.controller,required this.text});
  final TextEditingController controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: text,
        border: OutlineInputBorder(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, required this.hintText, required this.isPassword, required this.controller});
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: controller,
                  obscureText: isPassword ? true : false,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400)
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: hintText,
                    hintStyle: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              );
  }
}
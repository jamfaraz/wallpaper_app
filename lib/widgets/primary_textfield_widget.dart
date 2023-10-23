import 'package:flutter/material.dart';

class PrimaryTextfield extends StatelessWidget {
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;

  const PrimaryTextfield({
    super.key,
    this.onChanged,
    this.controller,
    this.suffixIcon,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.transparent),
      child: TextField(
        controller: controller,
        autofocus: false,
        style: const TextStyle(fontSize: 17, color: Colors.black),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          // prefixIcon: const Icon(Icons.search),
          filled: true,
          focusColor: const Color(0xFFFAFAFA),
          contentPadding: const EdgeInsets.only(left: 14.0, ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFFAFAFA)),
            borderRadius: BorderRadius.circular(25),
          ),
          suffixIcon: suffixIcon,
          hintText: hintText,
         
        ),
        onChanged: onChanged,
      ),
    );
  }
}

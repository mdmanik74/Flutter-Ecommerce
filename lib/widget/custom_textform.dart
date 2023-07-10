// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CustomTextForm extends StatelessWidget {
   CustomTextForm({Key? key,required this.obscureText, required this.onTapSuffixIcon, this.suffixIcon, required this.hint, required this.prefixIcon}) : super(key: key);
 String hint;
 IconData prefixIcon;
 IconData? suffixIcon;
 VoidCallback onTapSuffixIcon;
 bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: Colors.orange),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: Colors.black),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: Colors.green),
          ),
          hintText:hint,
          hintStyle: const TextStyle(fontFamily: 'Inter',fontSize: 15,fontWeight: FontWeight.w500),
          prefixIcon:  Icon(prefixIcon),
          suffixIcon: IconButton(
            icon: Icon(suffixIcon),
            onPressed: (){
              onTapSuffixIcon();
            },
          ),
        ),
      ),
    );
  }
}

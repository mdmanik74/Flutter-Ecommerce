import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Colors.redAccent,
       borderRadius: BorderRadius.circular(30),
      ),
      child: const Text(
        'Get Started', style: TextStyle(color: Colors.white,fontFamily:'Inter',fontWeight: FontWeight.w700,fontSize: 16),
      ),
    );
  }
}

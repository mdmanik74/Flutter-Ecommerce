import 'package:flutter/material.dart';
import 'package:hello_world/view/sign_screen.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      height: 56,
      width:double.infinity,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(30),
      ),
      child: InkWell(
        child: const Text('Get Started', style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 16),), onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInScreen(),),);
    },
      )
    );
  }
}

/*
const Text(
        'Get Started',
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 16),
      ),
 */
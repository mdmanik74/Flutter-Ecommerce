import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text('Welcome Back !',style: Theme.of(context).textTheme.displayLarge,),
                      Text('Please Enter Your Account Here',style: Theme.of(context).textTheme.bodyLarge,)
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    ));
  }
}

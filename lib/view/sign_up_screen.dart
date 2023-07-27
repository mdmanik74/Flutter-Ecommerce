import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../widget/custom_textform.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool obscure = true;
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: Scaffold(
          body: SafeArea(

              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Expanded(
                        child: Form(
                          key: key,
                          child: Column(children: [
                            Text(
                              'Welcome!',
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            SizedBox(height: 10,),
                            Text(
                              'Please Enter Your Account Here',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: CustomTextForm(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter the email";
                                  }
                                  return null;
                                },
                                hint: 'Email or phone number',
                                prefixIcon: IconlyBroken.message,
                                obscureText: false,
                                onTapSuffixIcon: () {},
                              ),
                            ),
                            CustomTextForm(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter the password";
                                }
                                return null;
                              },
                              obscureText: obscure,
                              hint: 'Password',
                              prefixIcon: IconlyBroken.lock,
                              suffixIcon: obscure == true
                                  ? IconlyBroken.show
                                  : IconlyBroken.hide,
                              onTapSuffixIcon: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                            ),
                            Expanded(child: Column(
                              children: [
                                Row(children: const [Text('Your Password must Cotain')],

                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(children:  [
                                  const CircleAvatar(
                                    radius: 10,
                                    child: Icon(Icons.done,
                                    size: 12,
                                      color: Colors.cyan,
                                    ),
                                  ),
                                  Text(' Must be 6 Character',
                                    style: Theme.of(context).textTheme.bodyMedium,),
                                ],),

                                SizedBox(height: 10,),
                                Row(children:  [
                                  const CircleAvatar(
                                    radius: 10,
                                    child: Icon(Icons.done,
                                      size: 12,
                                      color: Colors.cyan,
                                    ),
                                  ),
                                  Text(' Contains a Number',
                                    style: Theme.of(context).textTheme.bodyMedium,),
                                ],),
                              ],
                            ),
                            ),

                            Center(
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.symmetric(horizontal: 24),
                                height: 56,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: InkWell(
                                  child: const Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      key.currentState!.validate();
                                    });
                                  },
                                ),
                              ),
                            ),


                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
  }
}

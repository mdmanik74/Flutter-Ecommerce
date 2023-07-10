import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../widget/custom_textform.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool obscure =false;

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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        Text('Welcome Back !',style: Theme.of(context).textTheme.displayLarge,),
                        Text('Please Enter Your Account Here',style: Theme.of(context).textTheme.bodyLarge,),
                         Padding(
                           padding: const EdgeInsets.only(top: 20),
                           child: CustomTextForm(
                             hint: 'Email or phone number',
                             prefixIcon: IconlyBroken.message,
                             obscureText: false, onTapSuffixIcon: () {
                           },
                           ),
                         ),
                        CustomTextForm(
                          obscureText: obscure,
                          hint: 'Password',
                          prefixIcon: IconlyBroken.lock,
                          suffixIcon: obscure == true? IconlyBroken.show:IconlyBroken.hide,
                          onTapSuffixIcon: () {
                            setState(() {
                              obscure=!obscure;
                            });

                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Forget Password ?', style: Theme.of(context).textTheme.bodyMedium,)
                          ],
                        )
                      ]
                    ),
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

import 'package:flutter/material.dart';
import '../widget/custom_button.dart';
class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [Expanded(
            flex: 2,
            child: Image.asset("assets/images/Onboarding.png",
            height: double.infinity, width: double.infinity,fit: BoxFit.fill,
            ),
          ),
            Expanded(
                child: Column(
                  children: [
                    Text('Start Cooking', style: Theme.of(context).textTheme.displayLarge,),
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: SizedBox(
                       width:210,
                           child: Text("Let's Join our community to cook better food !",style: Theme.of(context).textTheme.bodyLarge,),
                         ),
                   ),
              const Padding(
                padding: EdgeInsets.only(top:40),
                child: CustomButton(),
              ),

              ],
                )
            ),
          ],
        ),
      ),);
  }
}
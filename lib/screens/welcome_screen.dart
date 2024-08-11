import 'package:cuisine_decider/screens/signin_screen.dart';
import 'package:cuisine_decider/screens/signup_screen.dart';
import 'package:cuisine_decider/widgets/custom_scaffold.dart';
import 'package:cuisine_decider/widgets/welcome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return customscaffold(
      child: Column(
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 0,
              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Cuisine\n Decider\n',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 45.0,
                            fontWeight: FontWeight.w900,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(66, 0, 0, 0),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/images/saly2.png',
            height: 500,
            width: 500,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavigationButton(
                    buttonText: 'Sign In', destinationPage: signinscreen()),
                NavigationButton(
                    buttonText: 'sign up', destinationPage: signupscreen())
              ],
            ),
          )
        ],
      ),
    );
  }
}

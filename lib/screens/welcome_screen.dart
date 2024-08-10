import 'package:cuisine_decider/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return customscaffold(
      child: Column(
        children: [
          Flexible(
            child: Container(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: 'Cuisine\n Decider\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(
                      text:
                          'Welcome back! Enter personal details to register \n',
                      style: TextStyle(
                        color: Colors.transparent,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(child: Text(''))
        ],
      ),
    );
  }
}

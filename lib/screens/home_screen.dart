import 'package:cuisine_decider/screens/welcome_screen.dart';
import 'package:cuisine_decider/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class _homescreen extends StatefulWidget {
  const _homescreen({super.key});

  @override
  State<_homescreen> createState() => __homescreenState();
}

class __homescreenState extends State<_homescreen> {
  @override
  Widget build(BuildContext context) {
    return customscaffold(
      child: ElevatedButton(
        child: Text("logout"),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => welcomescreen()));
        },
      ),
    );
  }
}

import 'package:cuisine_decider/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class forgetpassword_screen extends StatefulWidget {
  const forgetpassword_screen({super.key});

  @override
  State<forgetpassword_screen> createState() => _forgetpassword_screenState();
}

class _forgetpassword_screenState extends State<forgetpassword_screen> {
  @override
  Widget build(BuildContext context) {
    return const customscaffold(child: Text('forgot password'));
  }
}

import 'package:cuisine_decider/widgets/custom_scaffold.dart';
import 'package:cuisine_decider/widgets/reusablebutton.dart';
import 'package:cuisine_decider/widgets/reusabletext.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class forgetpassword_screen extends StatefulWidget {
  const forgetpassword_screen({super.key});

  @override
  State<forgetpassword_screen> createState() => _forgetpassword_screenState();
}

class _forgetpassword_screenState extends State<forgetpassword_screen> {
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return customscaffold(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              reuseabletextfield("Enter Email Id", Icons.person_outlined, false,
                  _emailTextController),
              const SizedBox(
                height: 20,
              ),
              firebasebutton(context, "Reset Password", () {
                FirebaseAuth.instance
                    .sendPasswordResetEmail(email: _emailTextController.text)
                    .then((value) => Navigator.of(context).pop());
              })
            ],
          ),
        ),
      ),
    );
  }
}

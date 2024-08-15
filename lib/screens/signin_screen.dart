import 'package:cuisine_decider/screens/forgetpassword_screen.dart';
import 'package:cuisine_decider/screens/home_screen.dart';
import 'package:cuisine_decider/widgets/custom_scaffold.dart';
import 'package:cuisine_decider/widgets/reusablebutton.dart';
import 'package:cuisine_decider/widgets/reusabletext.dart';
import 'package:cuisine_decider/widgets/showerror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signinscreen extends StatefulWidget {
  const signinscreen({super.key});

  @override
  State<signinscreen> createState() => _signinscreenState();
}

class _signinscreenState extends State<signinscreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return customscaffold(
        child: SingleChildScrollView(
            child: Padding(
      padding: EdgeInsets.fromLTRB(
          20, MediaQuery.of(context).size.height * 0.2, 20, 0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255).withOpacity(1),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 8,
              )
            ]),
        child: Column(
          children: <Widget>[
            const Text(
              "Sign In",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  shadows: [
                    Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(108, 0, 0, 0))
                  ]),
            ),
            const SizedBox(
              height: 15,
            ),
            reuseabletextfield("Enter email id", Icons.person_outlined, false,
                _emailTextController),
            const SizedBox(
              height: 30,
            ),
            reuseabletextfield("Enter Password", Icons.lock_outlined, true,
                _passwordTextController),
            const SizedBox(
              height: 6,
            ),
            forgetpassword(context),
            firebasebutton(context, "Sign In", () {
              FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text)
                  .then((value) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homescreen()));
              }).onError((error, StackTrace) {
                print("error ${error.toString()}");
                showError(context, "error ${error.toString()}");
              });
            })
          ],
        ),
      ),
    )));
  }

  Widget forgetpassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 33,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.black87),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => forgetpassword_screen())),
      ),
    );
  }
}

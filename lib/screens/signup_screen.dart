import 'package:cuisine_decider/screens/home_screen.dart';
import 'package:cuisine_decider/screens/signin_screen.dart';
import 'package:cuisine_decider/widgets/custom_scaffold.dart';
import 'package:cuisine_decider/widgets/reusablebutton.dart';
import 'package:cuisine_decider/widgets/reusabletext.dart';
import 'package:cuisine_decider/widgets/showerror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
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
            borderRadius: BorderRadius.circular(30.0),
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
              "Sign Up",
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
              height: 30,
            ),
            reuseabletextfield('Enter password again', Icons.lock_outlined,
                true, _passwordTextController),
            const SizedBox(
              height: 6,
            ),
            firebasebutton(context, "Create Account", () {
              FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text)
                  .then((value) {
                print("Created New account");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homescreen()));
              }).onError((error, stackTrace) {
                print("error ${error.toString()}");
                showError(context, "error ${error.toString()}");
              });
            }),
            Signinoption()
          ],
        ),
      ),
    )));
  }

  Row Signinoption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already Have a Account? ",
            style: TextStyle(color: Colors.black87)),
        GestureDetector(
          onTap: () {
            Navigator.push(context as BuildContext,
                MaterialPageRoute(builder: (context) => signinscreen()));
          },
          child: const Text(
            "Sign In",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

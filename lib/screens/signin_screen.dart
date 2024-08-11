import 'package:cuisine_decider/widgets/custom_scaffold.dart';
import 'package:cuisine_decider/widgets/reusablebutton.dart';
import 'package:cuisine_decider/widgets/reusabletext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            color: Color.fromARGB(122, 222, 88, 255).withOpacity(0.3),
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
            firebasebutton(context, "sign in", () {})
          ],
        ),
      ),
    )));
  }
}

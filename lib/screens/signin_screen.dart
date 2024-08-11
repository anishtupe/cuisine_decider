import 'package:cuisine_decider/widgets/custom_scaffold.dart';
import 'package:cuisine_decider/widgets/reusablebutton.dart';
import 'package:cuisine_decider/widgets/reusabletext.dart';
import 'package:flutter/material.dart';

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
        child: Column(
          children: <Widget>[
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
    ));
  }
}

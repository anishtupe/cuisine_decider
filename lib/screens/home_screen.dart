import 'package:cuisine_decider/screens/signin_screen.dart';
import 'package:cuisine_decider/widgets/custom_scaffold.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return customscaffold(
      child: Center(
        child: ElevatedButton(
          child: Text("Signout"),
          onPressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              print("Signedout");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => signinscreen()));
            });
          },
        ),
      ),
    );
  }
}

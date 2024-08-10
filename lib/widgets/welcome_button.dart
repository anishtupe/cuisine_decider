import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final String buttonText;
  final Widget destinationPage;

  const NavigationButton({
    Key? key,
    required this.buttonText,
    required this.destinationPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationPage),
        );
      },
      child: Text(buttonText),
    );
  }
}

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
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationPage),
        );
      },
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Color.fromARGB(
              116, 0, 0, 0), // You can change the color to your preference
          fontSize: 25.0, // Adjust the font size as needed
          decoration: TextDecoration.none, // No underline by default
        ),
      ),
    );
  }
}

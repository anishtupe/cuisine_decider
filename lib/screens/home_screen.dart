import 'package:flutter/material.dart';
import 'package:cuisine_decider/screens/signin_screen.dart';
import 'package:cuisine_decider/widgets/custom_scaffold.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final List<String> _cuisines = [
    'Italian',
    'Chinese',
    'Mexican',
    'Indian',
    'Japanese',
  ];

  int _currentIndex = 0;

  void _onSwipeLeft() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _cuisines.length;
    });
  }

  void _onSwipeRight() {
    _onSwipeLeft(); // Just to move to the next item for demo purposes
  }

  Future<void> _signOut() async {
    // Here you would normally call FirebaseAuth to sign out
    // For demonstration purposes, we'll just print a message
    print("Signed out");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => signinscreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return customscaffold(
      child: Center(
        child: Stack(
          children: [
            if (_cuisines.isNotEmpty)
              Draggable(
                feedback: _buildCuisineCard(),
                childWhenDragging: Container(),
                onDragEnd: (details) {
                  if (details.velocity.pixelsPerSecond.dx > 0) {
                    _onSwipeRight();
                  } else {
                    _onSwipeLeft();
                  }
                },
                child: _buildCuisineCard(),
              ),
            Positioned(
              top: 20.0,
              right: 20.0,
              child: ElevatedButton(
                onPressed: _signOut,
                child: Text('Sign Out'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCuisineCard() {
    return Align(
      alignment: Alignment.center,
      child: Card(
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              _cuisines[_currentIndex],
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

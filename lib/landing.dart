
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {

final String username;
final String password;

  const LandingPage({super.key, required this.username, required this.password});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bolongaita Activity 6'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("user: ${widget.username}", style: const TextStyle(fontSize: 30)),
            SizedBox(height: 30),
            Text("Password: ${widget.password}", style: const TextStyle(fontSize: 30)),
            SizedBox(height: 30),
            ElevatedButton(onPressed: () =>
                Navigator.pop(context),
              child: const Text("Back to Login"),
            ),
          ],
        ),
      ),
    );
  }
}
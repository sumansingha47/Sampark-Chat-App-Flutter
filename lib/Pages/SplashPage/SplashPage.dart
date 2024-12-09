import 'package:flutter/material.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SPLASH SCREEN",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}

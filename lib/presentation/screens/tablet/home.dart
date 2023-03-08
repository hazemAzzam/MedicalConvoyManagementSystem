import 'package:flutter/material.dart';

class HomeScreenTablet extends StatelessWidget {
  const HomeScreenTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Tablet", style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}

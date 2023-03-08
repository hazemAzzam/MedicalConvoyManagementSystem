import 'package:flutter/material.dart';

class HomeScreenDesktop extends StatelessWidget {
  const HomeScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Desktop", style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}

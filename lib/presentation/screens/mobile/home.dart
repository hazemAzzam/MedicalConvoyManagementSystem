import 'package:flutter/material.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Mobile", style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}

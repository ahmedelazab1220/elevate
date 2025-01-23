import 'package:flutter/material.dart';

import 'Features/home/presentation/view/home_screen.dart';

void main() {
  runApp(const Elevate());
}

class Elevate extends StatelessWidget {
  const Elevate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

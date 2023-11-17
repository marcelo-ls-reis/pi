import 'package:flutter/material.dart';

import 'dashboard.dart';

void main() => runApp(
      const Machine(),
    );

class Machine extends StatelessWidget {
  const Machine({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Dashboard(),
      ),
    );
  }
}
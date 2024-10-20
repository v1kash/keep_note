import 'package:flutter/material.dart';

class TemplatePage extends StatelessWidget {
  final Widget child;
  const TemplatePage({super.key,
  required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: child
      ),

    );
  }
}

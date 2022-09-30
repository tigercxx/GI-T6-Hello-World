import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF6B8972),
          title: const Text('Schedule Page')),
      body:
          const Center(child: Text('Schedule', style: TextStyle(fontSize: 60))),
    );
  }
}

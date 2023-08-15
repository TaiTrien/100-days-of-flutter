import 'package:flutter/material.dart';

class AnimatedFoo extends StatefulWidget {
  const AnimatedFoo({super.key});

  @override
  State<AnimatedFoo> createState() => _AnimatedFooState();
}

class _AnimatedFooState extends State<AnimatedFoo> {
  Color currentColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedFoo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentColor = currentColor == Colors.red ? Colors.blue : Colors.red;
          });
        },
        child: const Icon(Icons.change_circle),
      ),
      body: Center(
          child: AnimatedContainer(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: currentColor,
            borderRadius: BorderRadius.circular(
              currentColor == Colors.red ? 0 : 20,
            )),
        duration: const Duration(seconds: 1),
      )),
    );
  }
}

import 'package:flutter/material.dart';

class TweenControllerPage extends StatelessWidget {
  const TweenControllerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TweenControllerPage'),
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: TweenAnimationBuilder(
            builder: (context, value, child) {
              return Stack(
                children: [
                  Transform.rotate(
                      angle: value,
                      child: Image.asset(
                        'assets/images/sharingan1.png',
                      )),
                  TweenAnimationBuilder(
                      tween: Tween(begin: 0.0, end: 1.0),
                      duration: const Duration(seconds: 5),
                      builder: (context, opacity, child) {
                        return Opacity(
                          opacity: opacity,
                          child: Transform.rotate(
                              angle: value,
                              child: Image.asset(
                                'assets/images/sharingan2.png',
                              )),
                        );
                      })
                ],
              );
            },
            duration: const Duration(seconds: 5),
            curve: Curves.easeInCirc,
            tween: Tween(
              begin: 0.0,
              end: 360.0,
            ),
          ),
          // child: Image.asset('assets/images/sharingan2.png'),
        ),
      ),
    );
  }
}

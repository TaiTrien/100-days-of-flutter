import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

final faker = Faker();
final fakeItems = List.generate(30, (index) => faker.image.image(random: true));

class ListWheelScrollViewDemo extends StatelessWidget {
  const ListWheelScrollViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListWheelScrollView Demo'),
      ),
      body: ListWheelScrollView(
        itemExtent: MediaQuery.sizeOf(context).width,
        diameterRatio: 2,
        // offAxisFraction: 2,
        // magnification: 1,
        // useMagnifier: true,
        children: [
          ...fakeItems.map((e) => Image.network(e)),
        ],
      ),
    );
  }
}

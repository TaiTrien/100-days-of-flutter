import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final faker = Faker();
final fakeItems = List.generate(10, (index) => faker.food);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Slivers demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.amber,
            pinned: true,
            expandedHeight: 150,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                faker.image.image(random: true),
                fit: BoxFit.cover,
              ),
              title: const Text(
                'Restaurants',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(fakeItems[index].restaurant()),
              );
            },
            itemCount: fakeItems.length,
          ),
          SliverAppBar(
            backgroundColor: Colors.green,
            pinned: true,
            expandedHeight: 150,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                faker.image.image(random: true),
                fit: BoxFit.cover,
              ),
              title: const Text(
                'Dishes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(fakeItems[index].dish()),
              );
            },
            itemCount: fakeItems.length,
          ),
        ],
      ),
    );
  }
}

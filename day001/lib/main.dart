import 'package:day001/pages/draggable_scrollable_sheet_page.dart';
import 'package:day001/pages/list_wheel_scroll_view_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DraggableScrollableDemo()));
              },
              child: const Text('Draggable Scrollable Sheet'),
            ),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ListWheelScrollViewDemo()));
              },
              child: const Text('ListWheel ScrollView'),
            ),
          ],
        ),
      ),
    );
  }
}

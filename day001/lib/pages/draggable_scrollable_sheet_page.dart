import 'package:flutter/material.dart';

class DraggableScrollableDemo extends StatelessWidget {
  const DraggableScrollableDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Draggable Scrollable sheet'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const ColoredBox(
            color: Colors.black,
            child: FlutterLogo(
              size: 1,
            ),
          ),
          DraggableScrollableSheet(
            minChildSize: 0.1,
            // snap: true,
            // snapSizes: [0.5],
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  color: Colors.white60,
                ),
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 25,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('$index'),
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  runApp(const HooksExample());
}

class HooksExample extends HookWidget {
  const HooksExample({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hooks'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "you have clicked this button  this many times:",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                '${counter.value}',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter.value++;
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:state_management_sample/store/counter_store.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.counterStore,
  }) : super(key: key);

  final CounterStore counterStore;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: counterStore,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('State Management Example'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${counterStore.counter}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              counterStore.incrementCounter();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}

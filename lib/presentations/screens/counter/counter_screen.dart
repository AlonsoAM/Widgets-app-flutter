import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentations/providers/counter_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Riverpod'),
      ),
      body:  Center(
        child: Text(
          'Valor: $clickCounter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
    );
  }
}

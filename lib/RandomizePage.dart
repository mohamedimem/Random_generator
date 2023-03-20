import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter101/RandomizerChangeNotifier.dart';
import 'package:flutter101/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RandomizePage extends ConsumerWidget {
  RandomizePage({super.key});
  final randamGenerator = Random();

  int? _generataedNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomizer = ref.watch(randomizerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Randomize')),
      body: Center(
        child:
            Text(randomizer.generatedNumber?.toString() ?? 'Generate a number',
                style: TextStyle(
                  fontSize: 18,
                )),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            ref.read(randomizerProvider.notifier).generateRandomNumber();
          },
          label: Text('Generate')),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter101/RandomizerChangeNotifier.dart';
import 'package:flutter101/range_selector_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const AppWidget());
}

final randomizerProvider =
    StateNotifierProvider<RandomizerStateNotifier, RandomierState>(
        (ref) => RandomizerStateNotifier());

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const RangeSelectorPage(),
      ),
    );
  }
}

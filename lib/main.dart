import 'package:flutter/material.dart';
import 'package:flutter_foundations/randomizer_state_notifier.dart';
import 'package:flutter_foundations/range_selector_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(const AppWidget());
}


final randomizerProvider = StateNotifierProvider<RandomizerStateNotifier, RandomizerState>((ref)=>RandomizerStateNotifier());

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { 
    return ProviderScope(
      child: MaterialApp(
        title: 'Random number generator',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: RangeSelectorPage(),
      ),
    );
  } 
}


 
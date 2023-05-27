import 'package:flutter/material.dart';
import 'package:flutter_foundations/randomizer_change_notifier.dart';
import 'package:flutter_foundations/range_selector_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { 
    return ChangeNotifierProvider(
      create: (context) => RandomizerChangeNotifier(),
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


 
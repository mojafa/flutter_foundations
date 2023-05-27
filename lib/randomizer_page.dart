// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';
import 'package:flutter_foundations/randomizer_change_notifier.dart';
import 'package:provider/provider.dart';

class RandomizerPage extends StatelessWidget {
   const RandomizerPage({
    Key? key,
  }) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
      body: Center(
        child: Consumer<RandomizerChangeNotifier>(
          builder: (context, notifier, child){
            return Text(
              notifier.generatedNumber?.toString() ?? 'Genenrate a number',
              style: const TextStyle(fontSize: 42),
            );
          },

        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        
        label: const Text('Generate'),
        onPressed: () {
          context.read<RandomizerChangeNotifier>().generatedRandomNumber();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }
}

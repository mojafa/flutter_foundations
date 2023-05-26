// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RandomizerPage extends HookWidget {
  final int min, max;
  const RandomizerPage({
    Key? key,
    required this.min,
    required this.max,
  }) : super(key: key);

  @override
  State<RandomizerPage> createState() => _RandomizerPageState();
}

class _RandomizerPageState extends State<RandomizerPage> {
  int? _generatedNumber;
  final randomGenerator = Random();
  @override
  Widget build(BuildContext context) {
    widget.min;
    widget.max;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
      body: Center(child: Text(_generatedNumber?.toString() ?? 'Generate a number',
      style: const TextStyle(fontSize: 42),
      ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        
        label: const Text('Generate'),
        onPressed: () {
          setState(() {
            _generatedNumber = widget.min + randomGenerator.nextInt(widget.max + 1 - widget.min);
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }
}
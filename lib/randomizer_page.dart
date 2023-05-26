// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RandomizerPage extends StatefulWidget {
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
  @override
  Widget build(BuildContext context) {
    widget.min;
    widget.max;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
    );

  }
}
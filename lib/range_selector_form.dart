import 'package:flutter/material.dart';
import 'package:flutter_foundations/randomizer_change_notifier.dart';
import 'package:flutter_foundations/range_selector_page.dart';
import 'package:provider/provider.dart';

typedef IntValueSetter = void Function(int? value);

class RangeSelectorForm extends StatelessWidget{
  const RangeSelectorForm({
    Key? key,
    required this.formKey,
 
  }) : super(key: key);

  final GlobalKey<FormState> formKey;


  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Padding( 
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RangeSelectorTextFormField(
                labelText: 'Minimum',
                intValueSetter: (value) => context.read<RandomizerChangeNotifier>().min = value ?? 0,
              ),
              const SizedBox(height: 16),
              RangeSelectorTextFormField(
                labelText: 'Maximum',
                intValueSetter: (value) => context.read<RandomizerChangeNotifier>().max = value ?? 0,
              ),
            ],
          ),
        ),
      );
  }
}
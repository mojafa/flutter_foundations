import 'package:flutter/material.dart';
import 'package:flutter_foundations/main.dart';
import 'package:flutter_foundations/range_selector_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
typedef IntValueSetter = void Function(int? value);

class RangeSelectorForm extends ConsumerWidget{
  const RangeSelectorForm({
    Key? key,
    required this.formKey,
 
  }) : super(key: key);

  final GlobalKey<FormState> formKey;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
        key: formKey,
        child: Padding( 
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RangeSelectorTextFormField(
                labelText: 'Minimum',
                intValueSetter: (value) => ref.read(randomizerProvider.notifier).setMin(value!),
              ),
              const SizedBox(height: 16),
              RangeSelectorTextFormField(
                labelText: 'Maximum',
                intValueSetter: (value) => ref.read(randomizerProvider.notifier).setMax(value!),
              ),
            ],
          ),
        ),
      );
  }
}
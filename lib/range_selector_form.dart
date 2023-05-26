import 'package:flutter/material.dart';
import 'package:flutter_foundations/range_selector_page.dart';

typedef IntValueSetter = void Function(int? value);

class RangeSelectorForm extends StatelessWidget{
  const RangeSelectorForm({
    Key? key,
    required this.formKey,
    required this.minValueSetter,
    required this.maxValueSetter,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final IntValueSetter minValueSetter;
  final IntValueSetter maxValueSetter;

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
                intValueSetter: minValueSetter,
              ),
              const SizedBox(height: 16),
              RangeSelectorTextFormField(
                labelText: 'Maximum',
                intValueSetter: maxValueSetter,
              ),
            ],
          ),
        ),
      );
  }
}
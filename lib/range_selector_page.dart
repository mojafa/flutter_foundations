import 'package:flutter/material.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({Key? key}): super(key:key);

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();
  int _min = 0; 
  int _max = 0;  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Range'),
      ),
      body: const Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RangeSelectorTextFormField(
                labelText: 'Minimum',
                intValueSetter: (value) => _min = value,
              ),
              SizedBox(height: 16),
              RangeSelectorTextFormField(
                labelText: 'Maximum',
                intValueSetter: (value) => _max = value,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
         
          if (formKey.currentState?.validate() == true){
            formKey.currentState?.save();

          // TODO  navigate to the generator page
          }
          
      },
      ),
    );
  }
  
  }


class RangeSelectorTextFormField extends StatelessWidget {
  const RangeSelectorTextFormField({
    Key? key,
    required this.labelText,
    required this.intValueSetter,
  }) : super(key: key);

  final String labelText;
  final void Function(int value) intValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: false, 
        signed: true,
      ),
      validator: (value) {
        if (value == null || int.tryParse(value) == null){
          return 'Please enter a valid integer';
        } else {
          return null;
        }
      },
      onSaved: (newValue) => intValueSetter(int.parse(newValue ?? '')),
    );
  }
}

// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class inputSuhu extends StatelessWidget {
  const inputSuhu({
    Key? key,
    required this.etInput,
  }) : super(key: key);

  final TextEditingController etInput;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: etInput,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          labelText: 'Celcius', hintText: 'Enter the temperatur in celcius'),
    );
  }
}

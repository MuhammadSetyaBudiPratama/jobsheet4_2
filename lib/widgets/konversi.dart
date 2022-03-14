// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class konversi extends StatelessWidget {
  const konversi({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              onPressed();
            },
            child: const Text("Konversi"),
          ),
        ),
      ],
    );
  }
}

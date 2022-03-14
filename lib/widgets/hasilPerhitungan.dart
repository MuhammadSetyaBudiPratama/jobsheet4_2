// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class hasilPerhitungan extends StatelessWidget {
  const hasilPerhitungan({
    Key? key,
    required this.hasilHitung,
  }) : super(key: key);

  final double hasilHitung;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$hasilHitung",
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

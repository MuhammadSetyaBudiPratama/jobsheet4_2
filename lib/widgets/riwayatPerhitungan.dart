// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class riwayatPerhitungan extends StatelessWidget {
  const riwayatPerhitungan({
    Key? key,
    required this.listHasil,
  }) : super(key: key);

  final List<String> listHasil;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: listHasil.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(listHasil[index], style: const TextStyle(fontSize: 20)),
        );
      },
    ));
  }
}

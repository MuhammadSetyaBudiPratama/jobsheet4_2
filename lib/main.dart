// ignore_for_file: unused_import

import 'package:jobsheet4_2/widgets/hasilPerhitungan.dart';
import 'package:jobsheet4_2/widgets/inputSuhu.dart';
import 'package:jobsheet4_2/widgets/konversi.dart';
import 'package:jobsheet4_2/widgets/riwayatPerhitungan.dart';
import 'package:jobsheet4_2/widgets/targetPerhitungan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Konversi Suhu',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Konversi Suhu'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController etInput = TextEditingController();
  List<String> listSatuanSuhu = ["Kelvin", "Reamur", "Fahrenheit"];
  String selectedDropdown = "Kelvin";
  double hasilHitung = 0;
  List<String> listHasil = [];

  void onDropdownChanged(Object? value) {
    return setState(
      () {
        selectedDropdown = value.toString();
      },
    );
  }

  void konversiSuhu() {
    return setState(() {
      if (etInput.text.isNotEmpty) {
        switch (selectedDropdown) {
          case "Kelvin":
            hasilHitung = int.parse(etInput.text) + 273.15;
            break;
          case "Reamur":
            hasilHitung = int.parse(etInput.text) * 4 / 5;
            break;
          case "Fahrenheit":
            hasilHitung = (int.parse(etInput.text) * 9 / 5) + 32;
            break;
        }
        listHasil.add("Konversi dari " +
            etInput.text +
            " Celcius ke " +
            selectedDropdown +
            " menjadi " +
            hasilHitung.toString());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            inputSuhu(etInput: etInput),
            const SizedBox(
              height: 10,
            ),
            targetPerhitungan(
                selectedDropdown: selectedDropdown,
                listSatuanSuhu: listSatuanSuhu,
                onDropdownChanged: onDropdownChanged),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Hasil",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            hasilPerhitungan(hasilHitung: hasilHitung),
            const SizedBox(
              height: 10,
            ),
            konversi(onPressed: konversiSuhu),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Riwayat Konversi",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            riwayatPerhitungan(listHasil: listHasil)
          ],
        ),
      ),
    );
  }
}

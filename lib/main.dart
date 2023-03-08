import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MehmetEmin());
}

class MehmetEmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("Bugün Ne Yesem?", style: TextStyle(color: Colors.black)),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

//ctrl+shift+alt:tum satırlardda aynı işlemi yapmak için kullanılır

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  @override
  int corbano = 1;
  int yemekno = 1;
  int tatlino = 1;
  List<String> CorbaAdlari = [
    "Mercimek",
    "Tarhana",
    "Tavuk Suyu",
    "Düğün",
    "Yüksük"
  ];
  List<String> YemekAdlari = [
    "Karnıyarık",
    "Mantı",
    "Fasulye",
    "İçli Köfte",
    "Balık"
  ];
  List<String> TatliAdlari = [
    "Kadayıf",
    "Baklava",
    "Sütlaç",
    "Kazandibi",
    "Dondurma"
  ];
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Colors.transparent)),
                onPressed: () {
                  YemekDegis();
                  print("Corbaya tiklandi!");
                },
                child: Image.asset("assets/corba_$corbano.jpg")),
          ),
        ),
        Text(CorbaAdlari[(corbano) - 1], style: TextStyle(fontSize: 19)),
        Container(
          width: 160,
          child: Divider(
            height: 5,
            color: Colors.black,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Colors.transparent)),
                onPressed: () {
                  YemekDegis();
                  print("Ana yemeğe tiklandi!");
                },
                child: Image.asset("assets/yemek_$yemekno.jpg")),
          ),
        ),
        Text(YemekAdlari[(yemekno) - 1], style: TextStyle(fontSize: 19)),
        Container(
          width: 160,
          child: Divider(
            height: 5,
            color: Colors.black,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Colors.transparent)),
                onPressed: () {
                  YemekDegis();

                  print("Tatlıya tiklandi!");
                },
                child: Image.asset("assets/tatli_$tatlino.jpg")),
          ),
        ),
        Text(TatliAdlari[(tatlino) - 1], style: TextStyle(fontSize: 19)),
        Container(
          width: 160,
          child: Divider(
            height: 5,
            color: Colors.black,
          ),
        ),
      ]),
    );
  }

  void YemekDegis() {
    setState(() {
      corbano = (Random().nextInt(5)) + 1;
      tatlino = (Random().nextInt(5)) + 1;
      yemekno = (Random().nextInt(5)) + 1;
    });
  }
}

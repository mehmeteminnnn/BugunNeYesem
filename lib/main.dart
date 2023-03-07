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
class YemekSayfasi extends StatelessWidget {
  int corbano = 1;
  int yemekno = 1;
  int tatlino = 1;

  @override
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
                  print("Corbaya tiklandi!");
                },
                child: Image.asset("assets/corba_$corbano.jpg")),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Colors.transparent)),
                onPressed: () {
                  print("Ana yemeğe tiklandi!");
                },
                child: Image.asset("assets/yemek_$yemekno.jpg")),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Colors.transparent)),
                onPressed: () {
                  print("Tatlıya yiklandi!");
                },
                child: Image.asset("assets/tatli_$tatlino.jpg")),
          ),
        ),
      ]),
    );
  }
}

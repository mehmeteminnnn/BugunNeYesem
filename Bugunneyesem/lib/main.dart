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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Image.asset("assets/corba_1.jpg"),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Image.asset("assets/yemek_1.jpg"),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Image.asset("assets/tatli_1.jpg"),
          ),
        ),
      ]),
    );
  }
}

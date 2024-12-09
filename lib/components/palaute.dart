import 'package:flutter/material.dart';

class Palaute extends StatelessWidget {
  final bool oikein;
  final VoidCallback haeKysymysFunktio;
  const Palaute(this.oikein, this.haeKysymysFunktio, {super.key});

  @override
  Widget build(BuildContext context) {
    String teksti = 'Oikein meni!';
    if (!oikein) {
      teksti = 'Väärin meni, hups!';
    }

    return Column(children: [
      Text(teksti),
      ElevatedButton(
        onPressed: haeKysymysFunktio,
        child: const Text('Seuraava!'),
      )
    ]);
  }
}
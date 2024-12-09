import 'package:flutter/material.dart';


class Vastausvaihtoehto extends StatelessWidget {
  final String vastausteksti;
  final VoidCallback vastaaFunktio;
  const Vastausvaihtoehto(this.vastausteksti, this.vastaaFunktio, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(vastausteksti), onTap: vastaaFunktio);

  }
}


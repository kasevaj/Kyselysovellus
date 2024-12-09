import 'package:flutter/material.dart';

class TyyliteltyTeksti extends StatelessWidget {
  final String teksti;
  const TyyliteltyTeksti(this.teksti, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(teksti,
        style: const TextStyle(
          fontSize: 32,
        )
      )
    );
  }
}
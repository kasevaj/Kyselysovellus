import 'package:flutter/material.dart';
import '../components/tervehdysteksti.dart';

class Aloitusnakyma extends StatelessWidget {
  const Aloitusnakyma({super.key});



  @override
  Widget build(BuildContext context) {
    var teksti = Tervehdysteksti();
    final nappi = ElevatedButton(
      child: const Text('Kysy kysymys'),
      onPressed: () => Navigator.pushNamed(context, '/kysely')
    );

    final sarake = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      teksti,
      nappi
    ]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kyselysovellus')
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: sarake
          )
        )
      )
    );
  }
}
import 'package:flutter/material.dart';
import '../api/kysely_api.dart';
import '../components/kysymys.dart';
import '../components/palaute.dart';

class Kyselynakyma extends StatefulWidget {
  const Kyselynakyma({super.key});


  @override
  KyselynakymaState createState() => KyselynakymaState();
}

class KyselynakymaState extends State {
  var kysymys;
  var vastattu = false;
  var vastausOikein = false;

  @override
  initState() {
    super.initState();
    haeKysymys();
  }

  haeKysymys() async {
    kysymys = await KyselyApi().haeKysymys();
    vastattu = false;

    paivita();
  }

  vastaaKysymykseen(kysymysTunnus, vastausTunnus) async {
    vastausOikein = await KyselyApi().lahetaVastaus(kysymysTunnus, vastausTunnus);
    vastattu = true;

    paivita();
  }

  paivita() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (kysymys == null) {
      return const Scaffold(body: Text('Kysymystä haetaan'));
    }

    Widget sisalto;
    if (!vastattu) {
      sisalto = Kysymys(kysymys, vastaaKysymykseen);
    } else {
      sisalto = Palaute(vastausOikein, haeKysymys);
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: sisalto
        )
      )
    );
  }
}

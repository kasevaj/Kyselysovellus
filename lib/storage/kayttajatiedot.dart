import 'package:shared_preferences/shared_preferences.dart';

class Kayttajatiedot {
  tuttuKayttaja() async {
    SharedPreferences asetukset = await SharedPreferences.getInstance();
    var tuttuKayttaja = asetukset.containsKey('TUTTU_KAYTTAJA');
    asetukset.setString('TUTTU_KAYTTAJA', 'KYLLA');

    return tuttuKayttaja;
  }

    onTunnus() async {
    SharedPreferences asetukset = await SharedPreferences.getInstance();
    return asetukset.containsKey('KAYTTAJATUNNUS');
  }

  asetaTunnus(tunnus) async {
    SharedPreferences asetukset = await SharedPreferences.getInstance();
    var stringtunnus = tunnus.toString();
    asetukset.setString('KAYTTAJATUNNUS', stringtunnus);
  }

  haeTunnus() async {
  SharedPreferences asetukset = await SharedPreferences.getInstance();
  var tunnus = asetukset.getString('KAYTTAJATUNNUS');
  return tunnus; // Muutetaan takaisin int-tyypiksi
}

}
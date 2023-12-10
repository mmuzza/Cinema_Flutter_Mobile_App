import 'package:url_launcher/url_launcher.dart';

class WikiClick {
  static Future<void> openWikipedia(String movieName) async {
    String url = '';

    if (movieName == "SPIDER-MAN") {
      url = 'en.wikipedia.org/wiki/Spider-Man';
    } else if (movieName == "SUPERMAN") {
      url = 'en.wikipedia.org/wiki/Superman';
    } else if (movieName == "BATMAN") {
      url = 'en.wikipedia.org/wiki/Batman';
    } else if (movieName == "THE AVENGERS") {
      url = 'en.wikipedia.org/wiki/The_Avengers_(2012_film)';
    } else if (movieName == "PUSS IN BOOTS") {
      url = 'en.wikipedia.org/wiki/Puss_in_Boots';
    } else if (movieName == "ELEMENTAL") {
      url = 'en.wikipedia.org/wiki/Elemental_(2023_film)';
    } else if (movieName == "ENCANTO") {
      url = 'en.wikipedia.org/wiki/Encanto';
    } else if (movieName == "MINIONS") {
      url = 'en.wikipedia.org/wiki/Minions_(film)';
    } else if (movieName == "EVIL DEAD RISE") {
      url = 'en.wikipedia.org/wiki/Evil_Dead_Rise';
    } else if (movieName == "THE GRUDGE") {
      url = 'en.wikipedia.org/wiki/The_Grudge';
    } else if (movieName == "THE BLACK PHONE") {
      url = 'en.wikipedia.org/wiki/The_Black_Phone';
    } else if (movieName == "THE EXORCIST") {
      url = 'en.wikipedia.org/wiki/The_Exorcist';
    }

    if (url.isNotEmpty) {
      final Uri aUri = Uri(
        scheme: "https",
        path: url,
      );

      if (await canLaunchUrl(aUri)) {
        await launchUrl(aUri);
      } else {
        throw 'Could not launch $url';
      }
    }
  }
}
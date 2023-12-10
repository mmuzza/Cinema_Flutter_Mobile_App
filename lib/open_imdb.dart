import 'package:url_launcher/url_launcher.dart';

class ImdbClick {
  static Future<void> openImdb(String movieName) async {
    String url = '';

    if (movieName == "SPIDER-MAN") {
      url = 'www.imdb.com/title/tt0145487/';
    } else if (movieName == "SUPERMAN") {
      url = 'www.imdb.com/title/tt0348150/';
    } else if (movieName == "BATMAN") {
      url = 'www.imdb.com/title/tt1877830/';
    } else if (movieName == "THE AVENGERS") {
      url = 'www.imdb.com/title/tt4154796/';
    } else if (movieName == "PUSS IN BOOTS") {
      url = 'www.imdb.com/title/tt3915174/';
    } else if (movieName == "ELEMENTAL") {
      url = 'www.imdb.com/title/tt15789038/';
    } else if (movieName == "ENCANTO") {
      url = 'www.imdb.com/title/tt2953050/';
    } else if (movieName == "MINIONS") {
      url = 'www.imdb.com/title/tt2293640/';
    } else if (movieName == "EVIL DEAD RISE") {
      url = 'www.imdb.com/title/tt13345606/';
    } else if (movieName == "THE GRUDGE") {
      url = 'www.imdb.com/title/tt0391198/';
    } else if (movieName == "THE BLACK PHONE") {
      url = 'www.imdb.com/title/tt7144666/';
    } else if (movieName == "THE EXORCIST") {
      url = 'www.imdb.com/title/tt12921446/';
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
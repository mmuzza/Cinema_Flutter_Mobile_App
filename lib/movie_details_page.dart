import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieDetailsPage extends StatelessWidget {
  final String movieName;

  MovieDetailsPage({required this.movieName});

  Future<void> _launchURL(String url) async {
    final Uri aUri = Uri(
      scheme: "https",
      path: url,
    ) ;
    if (await canLaunchUrl(aUri)) {

      await launchUrl(aUri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {


    if (movieName == "SPIDER-MAN") {
      String imageUrl =
          'https://m.media-amazon.com/images/M/MV5BMmU3NWRhZDktZmI2Zi00YmI5LWFhNWUtNmUxMDAyMTExYTEyXkEyXkFqcGdeQXVyNjgwMTUxMTI@._V1_.jpg';

      return Scaffold(
        appBar: AppBar(
          title: Text('SPIDER-MAN'),
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: ()=> {
            _launchURL("www.imdb.com/title/tt0145487/")
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }




    // Movie: SUPERMAN
    else if(movieName == "SUPERMAN") {
      String imageUrl =
          'https://c4.wallpaperflare.com/wallpaper/853/426/478/fiction-costume-poster-superhero-wallpaper-preview.jpg';

      return Scaffold(
        appBar: AppBar(
          title: Text('SUPERMAN'),
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: ()=> {
            _launchURL("www.imdb.com/title/tt0348150/")
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }



    // Movie: BATMAN
    else if(movieName == "BATMAN") {
      String imageUrl =
          'https://c4.wallpaperflare.com/wallpaper/178/887/600/2008-dark-city-fire-wallpaper-preview.jpg';

      return Scaffold(
        appBar: AppBar(
          title: Text('BATMAN'),
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: ()=> {
            _launchURL("www.imdb.com/title/tt1877830/")
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }




    // Movie: THE AVENGERS
    else if(movieName == "THE AVENGERS") {
      String imageUrl =
          'https://c4.wallpaperflare.com/wallpaper/664/847/750/captain-america-chris-evans-captain-america-the-first-avenger-wallpaper-preview.jpg';

      return Scaffold(
        appBar: AppBar(
          title: Text('THE AVENGERS'),
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: ()=> {
            _launchURL("www.imdb.com/title/tt4154796/")
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }




    // Movie: PUSS IN BOOTS
    else if(movieName == "PUSS IN BOOTS") {
      String imageUrl =
          'https://forgepress.org/wp-content/uploads/2023/02/ouB7hwclG7QI3INoYJHaZL4vOaa-scaled.jpg';

      return Scaffold(
        appBar: AppBar(
          title: Text('PUSS IN BOOTS'),
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: ()=> {
            _launchURL("www.imdb.com/title/tt3915174/")
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }




    // Movie: ELEMENTAL
    else if(movieName == "ELEMENTAL") {
      String imageUrl =
          'https://m.media-amazon.com/images/I/710CdI8k9XL._AC_UF894,1000_QL80_.jpg';

      return Scaffold(
        appBar: AppBar(
          title: Text('ELEMENTAL'),
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: ()=> {
            _launchURL("www.imdb.com/title/tt15789038/")
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }




    // Movie: ENCANTO
    else if(movieName == "ENCANTO") {
      String imageUrl =
          'https://valleycultural.org/wp-content/uploads/2022/02/encanto-1-e1644277475636.jpeg';

      return Scaffold(
        appBar: AppBar(
          title: Text('ENCANTO'),
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: ()=> {
            _launchURL("www.imdb.com/title/tt2953050/")
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }




    // Movie: MINIONS
    else if(movieName == "MINIONS") {
      String imageUrl =
          'https://wallpapers.com/images/featured/despicable-me-minion-iphone-ochxii910yjqzc3m.jpg';

      return Scaffold(
        appBar: AppBar(
          title: Text('MINIONS'),
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: ()=> {
            _launchURL("www.imdb.com/title/tt2293640/")
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }




    // Movie: EVIL DEAD RISE
    else if(movieName == "EVIL DEAD RISE") {
      String imageUrl =
          'https://ih1.redbubble.net/image.4689001650.8983/flat,750x,075,f-pad,750x1000,f8f8f8.jpg';

      return Scaffold(
        appBar: AppBar(
          title: Text('EVIL DEAD RISE'),
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: ()=> {
            _launchURL("www.imdb.com/title/tt13345606/")
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }




    // Movie: The GRUDGE
    else if(movieName == "THE GRUDGE") {
      String imageUrl =
          'https://i.redd.it/eurepykab7ea1.jpg';

      return Scaffold(
        appBar: AppBar(
          title: Text('The GRUDGE'),
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: ()=> {
            _launchURL("www.imdb.com/title/tt0391198/")
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }




    // Movie: THE BLACK PHONE
    else if(movieName == "THE BLACK PHONE") {
      String imageUrl =
          'https://i.pinimg.com/originals/0f/60/6e/0f606e383612b76bc59eda9d97ffe1e0.jpg';

      return Scaffold(
        appBar: AppBar(
          title: Text('Movie Details'),
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: ()=> {
            _launchURL("www.imdb.com/title/tt7144666/")
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }


    // Movie: THE EXORCIST
    else if(movieName == "THE EXORCIST"){
      String imageUrl =
          'https://images.fineartamerica.com/images/artworkimages/medium/3/the-exorcist-jpw-artist.jpg';

      return Scaffold(
        appBar: AppBar(
          title: Text('THE EXORCIST'),
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: ()=> {
            _launchURL("www.imdb.com/title/tt12921446/")
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    else {
      // Handle other cases or return an empty container
      return Container();
    }


  }


}// end movie detail page
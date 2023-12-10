import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieInfo extends StatelessWidget {
  final String movieName;

  MovieInfo({required this.movieName});


  Widget build(BuildContext context) {
    Widget bodyWidget;

    if (movieName == "SPIDER-MAN") {
      bodyWidget = _buildMovieDetailsWidget(
        movieName,
        "Sam Raimi",
        "Tobey Maguire",
        "Kirsten Dunst",
        "Stan Lee",
        "2hr 15min",
        "7.5/10",
        "93%",
      );
    }


    else if(movieName == "SUPERMAN"){
      bodyWidget = _buildMovieDetailsWidget(
        movieName,
        "Bryan Singer",
        "Brandon Routh",
        "Kate Bosworth",
        "Kevin Spacey",
        "2hr 34min",
        "6.1/10",
        "74%",
      );
    }


    else if(movieName == "BATMAN"){
      bodyWidget = _buildMovieDetailsWidget(
        movieName,
        "Christopher Nolan",
        "Christian Bale",
        "Heath Ledger",
        "Gary Oldman",
        "2hr 32min",
        "9/10",
        "94%",
      );
    }


    else if(movieName == "THE AVENGERS"){
      bodyWidget = _buildMovieDetailsWidget(
        movieName,
        "Joe Russo",
        "Robert Downey Jr",
        "Scarlett Johansson",
        "Chris Hemsworth",
        "2hr 23min",
        "8/10",
        "91%",
      );
    }


    else if(movieName == "PUSS IN BOOTS"){
      bodyWidget = _buildMovieDetailsWidget(
        movieName,
        "Joel Crawford",
        "Antonio Banderas",
        "Salma Hayek",
        "Florence Pugh",
        "1hr 40min",
        "7.8/10",
        "95%",
      );
    }


    else if(movieName == "ELEMENTAL"){
      bodyWidget = _buildMovieDetailsWidget(
        movieName,
        "Peter Sohn",
        "Leah Lewis",
        "Mamoudou Athie",
        "Catherine O'Hara",
        "1hr 42min",
        "7/10",
        "74%",
      );
    }


    else if(movieName == "ENCANTO"){
      bodyWidget = _buildMovieDetailsWidget(
        movieName,
        "Byron Howard",
        "Stephanie Beatriz",
        "Sarah Nicole Robles",
        "Wilmer Valderrama",
        "1hr 42min",
        "7.2/10",
        "92%",
      );
    }


    else if(movieName == "MINIONS"){
      bodyWidget = _buildMovieDetailsWidget(
        movieName,
        "Fabien Polack",
        "Pierre Coffin",
        "Steve Carell",
        "Sandra Bullock",
        "1hr 31min",
        "6.4/10",
        "56%",
      );
    }


    else if(movieName == "EVIL DEAD RISE"){
      bodyWidget = _buildMovieDetailsWidget(
        movieName,
        "Lee Cronin",
        "Morgan Davies",
        "Alyssa Sutherland",
        "Lily Sullivan",
        "1hr 37min",
        "6.5/10",
        "84%",
      );
    }


    else if(movieName == "THE GRUDGE"){
      bodyWidget = _buildMovieDetailsWidget(
        movieName,
        "Takashi Shimizu",
        "Sarah Michelle Gellar",
        "Takako Fuji",
        "Jeff Betancourt",
        "1hr 39min",
        "5.9/10",
        "66%",
      );
    }


    else if(movieName == "THE BLACK PHONE"){
      bodyWidget = _buildMovieDetailsWidget(
        movieName,
        "Scott Derrickson",
        "Ethan Hawke",
        "Mason Thames",
        "Miguel Cazarez Mora",
        "1hr 43min",
        "6.9/10",
        "81%",
      );
    }


    else if(movieName == "THE EXORCIST"){
      bodyWidget = _buildMovieDetailsWidget(
        movieName,
        "John Boorman",
        "Linda Blair",
        "Ellen Burstyn",
        "Jason Miller",
        "2hr 2min",
        "8.1/10",
        "78%",
      );
    }

    else {
      bodyWidget = Container(); // Or any other default widget or empty container
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(movieName),
      ),
      body: bodyWidget,
      backgroundColor: Colors.black,
    );
  }


  Widget _buildMovieDetailsWidget(
      String movieName,
      String directorName,
      String star1,
      String star2,
      String star3,
      String duration,
      String rating1,
      String rating2
      ) {
    return Stack(
      children: [
        // Background GIF
        Positioned.fill(
          child: Image.network(
            'https://i.gifer.com/embedded/download/OCKw.gif', // Replace with the actual URL of your GIF
            fit: BoxFit.cover,
          ),
        ),
        // Content
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  movieName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 16),
                Text(
                  "Director",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  directorName,
                  style: TextStyle(fontSize: 16, color: Colors.white54),
                ),
                SizedBox(height: 16),
                Text(
                  "Movie Stars",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(star1, style: TextStyle(color: Colors.white54)),
                Text(star2, style: TextStyle(color: Colors.white54)),
                Text(star3, style: TextStyle(color: Colors.white54)),
                SizedBox(height: 16),
                Text(
                  "Movie Duration",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(duration, style: TextStyle(color: Colors.white54)),
                SizedBox(height: 16),
                Text(
                  "IMDb Ratings",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(rating1, style: TextStyle(color: Colors.white54)),
                SizedBox(height: 16),
                Text(
                  "Rotten Tomatoes",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(rating2, style: TextStyle(color: Colors.white54)),
              ],
            ),
          ),
        ),
      ],
    );
  }

}
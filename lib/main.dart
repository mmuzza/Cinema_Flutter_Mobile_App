import 'package:flutter/material.dart';
import 'package:third_project_378/open_wiki.dart';
import 'movie_details_page.dart';
import 'open_imdb.dart';
import 'movie_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String imageUrl =
      'https://wallpapers.com/images/hd/american-movie-posters-z0puq43u0qbtr6j2.webp';

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(

        title: Text(
          'Cinemava',
          style: TextStyle(
            fontSize: 60.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 120.0,
        flexibleSpace: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),



      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Action',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),

            SizedBox(height: 8.0),

            // Horizontal Scrollable ListView
            Container(
              height: 170.0, // Adjust the height as needed
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // List Item 1
                  buildListItem(
                    // 'https://cdna.artstation.com/p/marketplace/presentation_assets/003/053/574/large/file.jpg?1695900582',
                    // 'https://media.giphy.com/media/5wFGrglelyPDUPWMEO/giphy.gif',
                    'https://media.giphy.com/media/D7ZXU6eiZ4V7AEsOjV/giphy.gif',
                    'SPIDER-MAN',
                    'Starring Tobey Maguire',
                  ),
                  // List Item 2
                  buildListItem(
                    // 'https://wallpapers.com/images/hd/superman-wallpaper-g6ugjfa33l4emqyr.webp',
                    'https://media.tenor.com/oG6zWDp6-00AAAAC/superman.gif',
                    'SUPERMAN',
                    'Starring David Corenswet',
                  ),
                  // List Item 3
                  buildListItem(
                    // 'https://wallpapers.com/images/featured/batman-jwwt4ganu79qj9sz.jpg',
                    'https://24.media.tumblr.com/tumblr_mdoofgca0j1qj21xuo1_500.gif',
                    'BATMAN',
                    'Starring Christian Bale',
                  ),
                  // List Item 4
                  buildListItem(
                    // 'https://townsquare.media/site/442/files/2014/12/the_avengers-wide.jpg?w=980&q=75',
                    'https://cinematicslant.files.wordpress.com/2018/04/iron-man-2008.gif?w=840',
                    'THE AVENGERS',
                    'Starring Robert Downey',
                  ),
                ],
              ),
            ),

            // -----------List finished for Action Movies-----------

            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Animated',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),

            SizedBox(height: 8.0),

            // Horizontal Scrollable ListView
            Container(
              height: 170.0, // Adjust the height as needed
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // List Item 1
                  buildListItem(
                    'https://media.tenor.com/IZa-30Ub7lYAAAAd/puss-in-boots-the-last-wish.gif',
                    'PUSS IN BOOTS',
                    'Starring Antonio Banderas',
                  ),
                  // List Item 2
                  buildListItem(
                    'https://cdn.vox-cdn.com/uploads/chorus_asset/file/24936994/elemental_water_hair_2.gif',
                    'ELEMENTAL',
                    'Starring Leah Lewis',
                  ),
                  // List Item 3
                  buildListItem(
                    'https://www.icegif.com/wp-content/uploads/2022/03/icegif-397.gif',
                    'ENCANTO',
                    'Starring Stephanie Beatriz',
                  ),
                  // List Item 4
                  buildListItem(
                    'https://i.gifer.com/5ug4.gif',
                    'MINIONS',
                    'Starring Pierre Coffin',
                  ),
                ],
              ),
            ),


            // -----------List finished for Animated Movies-----------

            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Horror',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),

            SizedBox(height: 8.0),

            // Horizontal Scrollable ListView
            Container(
              height: 170.0, // Adjust the height as needed
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // List Item 1
                  buildListItem(
                    'https://64.media.tumblr.com/7192044295a798ae0c70407b149cc4e9/9ec19baf37dcb75d-68/s540x810/3ad6200ad32b220ccb35a33da26fc3e44dff1d79.gif',
                    'EVIL DEAD RISE',
                    'Starring Morgan Davies',
                  ),
                  // List Item 2
                  buildListItem(
                    'https://37.media.tumblr.com/1fde095337caa0585da0952b339a3bdc/tumblr_my7laru9FI1r0tytoo1_400.gif',
                    'THE GRUDGE',
                    'Starring Sarah Michelle',
                  ),
                  // List Item 3
                  buildListItem(
                    'https://i.pinimg.com/originals/36/ac/34/36ac34526ca49a478d28246719afe62d.gif',
                    'THE BLACK PHONE',
                    'Starring Ethan Hawke',
                  ),
                  // List Item 4
                  buildListItem(
                    'https://media3.giphy.com/media/xT9KVHs6I3EfDKnVte/giphy.gif',
                    'THE EXORCIST',
                    'Starring Linda Blair',
                  ),
                ],
              ),
            ),

            // -----------List finished for Horror Movies-----------


          ],// All Children end here

        ),
      ),
    );
  }


  Widget buildListItem(String gifUrl, String movieTitle, String starringActor) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MovieDetailsPage(movieName: movieTitle),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: GestureDetector(


          onLongPressMoveUpdate: (details) {
            _showPopupMenu(context, movieTitle, details.globalPosition);
          },

            // onLongPress: () {
            //   final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
            //   final Offset tapPosition = overlay.globalToLocal(Offset.zero);
            //   _showPopupMenu(context, movieTitle, tapPosition);
            // },


          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              width: 200.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 4.0,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      // GIF
                      Image.network(
                        gifUrl,
                        width: 200.0,
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                      // Movie Title
                      Positioned(
                        top: 105.0,
                        right: 0.0,
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movieTitle,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                starringActor,
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  // Optional: Additional information related to the movie can be added here.
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }





  Future<void> _showPopupMenu(BuildContext context, String movieTitle, Offset position) async {
    final RenderBox overlay = Overlay.of(context)!.context.findRenderObject() as RenderBox;

    final relativePosition = position - overlay.localToGlobal(Offset.zero);

    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        relativePosition.dx,
        relativePosition.dy,
        overlay.size.width - relativePosition.dx,
        overlay.size.height - relativePosition.dy,
      ),
      items: [
        PopupMenuItem(

          value: 'details',
          child: Text('Details'),
        ),
        PopupMenuItem(
          value: 'wikipedia',
          child: Text('Wikipedia'),
        ),
        PopupMenuItem(
          value: 'imdb',
          child: Text('IMDb'),
        ),
      ],
    ).then((value) {

      // Handle the selected option
      if (value == 'details') {

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MovieInfo(movieName: movieTitle),
          ),
        );



      } else if (value == 'wikipedia') {

        WikiClick.openWikipedia(movieTitle);

      } else if (value == 'imdb') {

        ImdbClick.openImdb(movieTitle);

      }


    });
  }


}// end class
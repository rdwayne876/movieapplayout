import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {

    Widget ratingSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow[500],
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[500],
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[500],
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[500],
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[500],
              ),
            ],
          ),
          Icon(
            Icons.share,
            color: Colors.white,
          ),
        ],
      ),
    );

    Widget titleSection = Center(
      child: Column(
        children: [
          Text(
            'The man from toronto'.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 28,
            ),

          ),
          Text(
            '(2022)',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18
            ),
          )
        ],
      ),
    );

    Widget descSection = Column(
      mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Padding(
            padding: EdgeInsets.only(left: 32),
            child: Row(
              children:[
                Text(
                  "Description",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 24
                  ),
                  textAlign: TextAlign.start,
                ),
            ]
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left:32, right: 32),
            child: Text(
              'The plot follows a New York City screw-up named Teddy who is mistaken for the Man from Toronto when the two wind up in the same AirBnb. Antics Ensue',
              style: TextStyle(
                  color: Colors.white
              ),
              softWrap: true,
            ),
          ),
        ],
      );

    Widget editButton = Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 34, bottom: 12),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.lime),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black)
          ),
          onPressed: () {},
          child: Text(
              'Edit'
          ),
        ),
      ),
    );


    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back
              ),
              Icon(
                Icons.favorite_border
              )
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            Image.asset(
                'images/image.jpg',
              height: 600,

            ),
            ratingSection,
            titleSection,
            descSection,
            editButton
          ],
        ),
      ),
    );
  }
}
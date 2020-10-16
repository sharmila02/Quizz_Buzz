import 'package:QuizBuzz/quizpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:QuizBuzz/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    "images/Python.png",
    "images/canada.png",
    "images/france.jpg",
    "images/india.png",
    "images/italy.png",
    "images/japan.png",
    "images/nigeria.jpg",
    "images/russia.jpg",
    "images/southafrica.jpg",
    "images/uk.png",
    "images/usa.png",
  ];

  List<String> description = [
    "Australia,the smallest continent and one of the largest countries on Earth, lying between the Pacific and Indian oceans in the Southern Hemisphere.",
    "Canada is the second largest country in the world(after Russia) by land mass.",
    "France,the largest country in Western Europe, has long been a gateway between the continent's northern and southern regions.",
    "India,the seventh largest country by land area, and the most populous democracy in the world.",
    "Italy,country of south-central Europe,occupying a peninsula that juts deep into the Mediterranean Sea.",
    "Japan is an archipelago, or string of islands, on the eastern edge of Asia.",
    "Nigeria is a multi-ethnic and culturally diverse federation which consists of 36 autonomous states and the Federal Capital Territory.",
    "Russia, the largest country in the world, occupies one-tenth of all the land on Earth. It spans 11 time zones across two continents (Europe and Asia) and has coasts on three oceans (the Atlantic, Pacific, and Arctic)",
    "South Africa, the southernmost country on the African continent, renowned for its varied topography, great natural beauty, and cultural diversity.",
    "The United Kingdom, also called the U.K., consists of a group of islands off the northwest coast of Europe. It is a unique country made up of four nations: England, Wales, Scotland, and Northern Ireland.",
    "The United States of America is the world's third largest country in size and nearly the third largest in terms of population."
  ];

  Widget customcard(String langname, String image, String description) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => getjson(langname),
            ));
          },
          child: Material(
            color: Colors.black,
            elevation: 10.0,
            borderRadius: BorderRadius.circular(2.0),
            child: Container(
              //height: 250.0,
              //width: 200.0,
              //decoration:
              //BoxDecoration(borderRadius: BorderRadius.circular(25.0)),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(100.0),
                      child: Container(
                        height: 148.0,
                        width: 280.0,
                        child: ClipRect(
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(image),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      langname,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: "Slabo27px",
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      description,
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                      maxLines: 5,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchList()));
            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
        title: Text(
          "QuizBuzz",
          style: TextStyle(
              color: Colors.white, fontFamily: "Galada", fontSize: 27.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        titleSpacing: 2.0,
      ),
      body: ListView(
        children: <Widget>[
          customcard("Australia", images[0], description[0]),
          customcard("Canada", images[1], description[1]),
          customcard("France", images[2], description[2]),
          customcard("India", images[3], description[3]),
          customcard("Italy", images[4], description[4]),
          customcard("Japan", images[5], description[5]),
          customcard("Nigeria", images[6], description[6]),
          customcard("Russia", images[7], description[7]),
          customcard("South Africa", images[8], description[8]),
          customcard("UK", images[9], description[9]),
          customcard("USA", images[10], description[10]),
        ],
      ),
    );
  }
}

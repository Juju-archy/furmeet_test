import 'package:flutter/material.dart';
import 'package:furmeet_test/widgets/profile_widget.dart';
import 'package:furmeet_test/page/home.dart';
import 'package:furmeet_test/widgets/function.dart';
import 'package:furmeet_test/widgets/drawer.dart';
import 'package:furmeet_test/model/users.dart';

class Meetup extends StatefulWidget {
  @override
  _MeetupState createState() => _MeetupState();
}

class _MeetupState extends State<Meetup> {
  @override
  Widget build (BuildContext context){
    double taille = MediaQuery.of(context).size.width * 0.5;

    return GestureDetector(
      onTap: (() => FocusScope.of(context).requestFocus(FocusNode())),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Meetup'),
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                //Title
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Furry Black Light',
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0
                    ),
                  ),
                ],
              ),
              padding(10.0),
              Row(
                //bannière meetup
                children: [
                  Expanded(
                    child: Container(
                      height: taille * 0.8,
                      child: Image.asset(
                        'lib/images/furmeet/furry_test_meetup.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              padding(15.0),
              Row(
                //Infio ville et créateur de l'event
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: taille * 0.3,
                          width: taille,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pinkAccent,
                                  blurRadius: 10,
                                  offset: Offset(4, 9), // Shadow position
                                ),
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('lib/images/furmeet/logo_furmeet.png'),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.pinkAccent,
                              size: 30.0,
                            ),
                            textWithStyle('Toulouse', color: Colors.pinkAccent, fontSize: 25.0, fontStyle: FontStyle.italic),
                          ],
                        ),
                        textWithStyle('Archy', color: Colors.pinkAccent, fontSize: 20.0),
                      ],
                    ),
                  ),
                ],
              ),
              padding(15.0),
              //Info
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textWithStyle('Détails', color: Colors.pinkAccent, fontSize: 30.0)
                ],
              ),
              Container(
                //Détails
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Furry baroudeuse. \nJ\'aime la cuisine, les voitures, la couture, lire',
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              padding(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textWithStyle('Participants', color: Colors.pinkAccent, fontSize: 30.0)
                ],
              ),
              Container(
                //Participants
                width: MediaQuery.of(context).size.width,
                child: Column (
                  children: <Widget>[

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

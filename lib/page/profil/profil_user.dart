import 'package:flutter/material.dart';
import 'package:furmeet_test/page/home.dart';
import 'package:furmeet_test/widgets/function.dart';

class ProfilUSer extends StatefulWidget {
  @override
  _ProfilUserState createState() => _ProfilUserState();
}

class _ProfilUserState extends State<ProfilUSer> {
  @override
  Widget build (BuildContext context){
    double taille = MediaQuery.of(context).size.width * 0.5;

    return GestureDetector(
      onTap: (() => FocusScope.of(context).requestFocus(FocusNode())),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Profile Archy'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        textWithStyle('Archy', color: Colors.pinkAccent, fontSize: 30.0),
                        textWithStyle('29 ans, Toulouse', color: Colors.pinkAccent, fontSize: 20.0, fontStyle: FontStyle.italic)
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: taille * 0.7,
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
                ],
              ),
              padding(25),
              //Info
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textWithStyle('Informations', color: Colors.pinkAccent, fontSize: 30.0)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        textWithStyle('Ville', color: Colors.pinkAccent),
                        textWithStyle('Ville', color: Colors.pinkAccent),
                        textWithStyle('Ville', color: Colors.pinkAccent),
                        textWithStyle('Ville', color: Colors.pinkAccent),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        textWithStyle('Toulouse', color: Colors.pinkAccent),
                        textWithStyle('Toulouse', color: Colors.pinkAccent),
                        textWithStyle('Toulouse', color: Colors.pinkAccent),
                        textWithStyle('Toulouse', color: Colors.pinkAccent),
                      ],
                    ),
                  ),
                ],
              ),
              padding(20),
              textWithStyle('Mes meetups', color: Colors.pinkAccent, fontSize: 30.0),
              Card(
                elevation: 10,
                shadowColor: Colors.pinkAccent,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){

                        },
                        child: Card(
                            elevation: 5,
                            shadowColor: Colors.red,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      children: [
                                        textWithStyle('Archy', color: Colors.pinkAccent)
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      children: [
                                        textWithStyle('Toulouse', color: Colors.pinkAccent)
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      children: [
                                        textWithStyle('14/12/2023', color: Colors.pinkAccent),
                                        textWithStyle('17h', color: Colors.pinkAccent)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      InkWell(
                        onTap: (){

                        },
                        child: Card(
                            elevation: 5,
                            shadowColor: Colors.red,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      children: [
                                        textWithStyle('Archy', color: Colors.pinkAccent)
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      children: [
                                        textWithStyle('Toulouse', color: Colors.pinkAccent)
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      children: [
                                        textWithStyle('14/12/2023', color: Colors.pinkAccent),
                                        textWithStyle('17h', color: Colors.pinkAccent)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      InkWell(
                        onTap: (){

                        },
                        child: Card(
                            elevation: 5,
                            shadowColor: Colors.red,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      children: [
                                        textWithStyle('Archy', color: Colors.pinkAccent)
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      children: [
                                        textWithStyle('Toulouse', color: Colors.pinkAccent)
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      children: [
                                        textWithStyle('14/12/2023', color: Colors.pinkAccent),
                                        textWithStyle('17h', color: Colors.pinkAccent)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      InkWell(
                        onTap: (){

                        },
                        child: Card(
                            elevation: 5,
                            shadowColor: Colors.red,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      children: [
                                        textWithStyle('Archy', color: Colors.pinkAccent)
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      children: [
                                        textWithStyle('Toulouse', color: Colors.pinkAccent)
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      children: [
                                        textWithStyle('14/12/2023', color: Colors.pinkAccent),
                                        textWithStyle('17h', color: Colors.pinkAccent)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
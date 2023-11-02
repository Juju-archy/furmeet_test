import 'package:flutter/material.dart';
import 'package:furmeet_test/widgets/function.dart';

class LoginSuccess extends StatefulWidget {
  @override
  _LoginSuccessState createState() => _LoginSuccessState();
}

class _LoginSuccessState extends State<LoginSuccess> {

  @override
  Widget build (BuildContext context) {
    double taille = MediaQuery.of(context).size.width * 0.5;

    return GestureDetector(
      onTap: (() => FocusScope.of(context).requestFocus(FocusNode())),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Connexion réussie !'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: taille,
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
                      image: AssetImage('lib/images/furmeet/logo_furmeet_icon.png')
                  ),
                ),
              ),
              padding(20.0),
              textWithStyle('Hello Archy!', color: Colors.redAccent)
            ],
          ),
        ),
      ),
    );
  }

}
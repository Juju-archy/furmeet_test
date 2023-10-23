import 'package:flutter/material.dart';

/*
Login Page
Contain :
- NavBar
- Logo
- Title
- TextField : Email
- TextField : Password
- ElevatedButton : 'Connexion'
- ElevatedButton : 'Pas encore de compte ?'
- TextButton : 'Mot de passe oublié ?"
 */

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email;
  late String password;
  bool _isVisible = false;


  @override
  Widget build (BuildContext context) {
    double taille = MediaQuery.of(context).size.width * 0.5;

    return GestureDetector(
        onTap: (() => FocusScope.of(context).requestFocus(FocusNode())),
        child: Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                padding(80),
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
                      image: AssetImage('lib/images/furmeet/logo_furmeet.png')
                    ),
                  ),
                ),
                padding(20),
                const Text(
                  'Fur Meet',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding(50),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail'
                  ),
                  onChanged: (String string){

                  },
                ),
                padding(10),
                //Password => modifier le
                TextField(
                  obscureText: !_isVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mot de passe',
                    suffixIcon: IconButton(
                      icon: Icon(_isVisible ? Icons.visibility_off : Icons.visibility),
                      onPressed: () => setState(() {
                        _isVisible = !_isVisible;
                      }),
                    ),
                  ),
                  onChanged: (String string){

                    },
                ),
                padding(10),
                padding(15),
                ElevatedButton(
                  //Définir le onPressed pour la connexion
                  onPressed: (){
                    setState(() {
                      //chemin vers page Hello (voir feuille connexion)
                    });
                  },
                  child: Text('Connexion',  style: TextStyle(color: Colors.white, fontSize: 25),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    fixedSize: const Size(300, 50),
                      side: const BorderSide(
                          width: 2,
                          color: Colors.pink
                      )
                  ),

                ),
                padding(10),
                ElevatedButton(
                  //Définir le onPressed pour la connexion
                  onPressed: (){
                    setState(() {
                      //chemin vers page Hello (voir feuille connexion)
                    });
                  },
                  child: Text(
                    'Inscription',
                    style: TextStyle(color: Colors.pink, fontSize: 23),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(300, 50),
                    side: const BorderSide(
                      width: 2,
                      color: Colors.pinkAccent
                    )
                  ),
                ),
                padding(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(

                        onPressed: (){
                          //Chemin vers mdp oublié
                        },
                        child: Text(
                          'Mot de passe oublié ?',
                          style: TextStyle(color: Colors.pinkAccent, fontSize: 20),
                        )
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }

  Padding padding(double top){
    return Padding(padding: EdgeInsets.only(top: top));
  }

}
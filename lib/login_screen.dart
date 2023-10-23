import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

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

  @override
  Widget build (BuildContext context) {

    return GestureDetector(
        onTap: (() => FocusScope.of(context).requestFocus(FocusNode())),
        child: Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                padding(20),
                //Logo Fur Meet-------------------------------------
                padding(5),
                Text(
                  'Fur Meet',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 25
                  ),
                ),
                padding(20),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail'
                  ),
                ),
                //Password => modifier le
                PasswordField(
                  color: Colors.blue,
                  passwordConstraint: r'.*[@$#.*].*',
                  hintText: 'doit contenir des caractères spéciaux',
                  border: PasswordBorder(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue.shade100,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue.shade100,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                      BorderSide(width: 2, color: Colors.red.shade200),
                    ),
                  ),
                  errorMessage:
                  'Doit contenir l\'un des caractères suivant: . * @ # \$',
                ),
                padding(15),
                ElevatedButton(
                  //Définir le onPressed pour la connexion
                  onPressed: (){
                    setState(() {
                      //chemin vers page Hello (voir feuille connexion)
                    });
                  },
                  child: Text('Connexion'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    //-------------------------------------------------------------------- taille fixe boutton
                    //fixedSize: MaterialStateProperty.all(20),
                  ),
                ),
                ElevatedButton(
                  //Définir le onPressed pour la connexion
                  onPressed: (){
                    setState(() {
                      //chemin vers page Hello (voir feuille connexion)
                    });
                  },
                  child: Text('Pas encore de compte ?'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    //-------------------------------------------------------------------- taille fixe boutton
                    //fixedSize: MaterialStateProperty.all(20),
                  ),
                ),
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
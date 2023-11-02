import 'package:flutter/material.dart';
import 'package:furmeet_test/page/home.dart';

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
          
        ),
      ),
    );
  }
}
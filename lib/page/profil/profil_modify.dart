import 'package:flutter/material.dart';
import 'package:furmeet_test/page/home.dart';
import 'package:furmeet_test/widgets/function.dart';
import 'package:furmeet_test/widgets/drawer.dart';

class ProfileUpdate extends StatefulWidget {
  @override
  _ProfileUpdateState createState() => _ProfileUpdateState();
}

class _ProfileUpdateState extends State<ProfileUpdate> {
  @override
  Widget build (BuildContext context){
    double taille = MediaQuery.of(context).size.width * 0.5;

    return GestureDetector(
      onTap: (() => FocusScope.of(context).requestFocus(FocusNode())),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Modifier profil'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
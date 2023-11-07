import 'package:flutter/material.dart';
import 'package:furmeet_test/widgets/profile_widget.dart';
import 'package:furmeet_test/page/home.dart';
import 'package:furmeet_test/widgets/function.dart';
import 'package:furmeet_test/widgets/drawer.dart';
import 'package:furmeet_test/class/users.dart';

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
        body: ListView(
          //padding: EdgeInsets.all(25.0),
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            padding(50.0),
            ProfileWidget(
              imagePath: 'lib/images/furmeet/logo_furmeet.png',
              isEdit: true,
              onClicked: () async {},
            ),
            padding(24.0),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Pseudo',
              ),
              onChanged: (pseudo) {},
            ),
            padding(24.0),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              onChanged: (email) {},
            ),
            padding(20.0),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'A propos',
              ),
              maxLines: 5,
              onChanged: (about) {},
            ),
          ],
        ),
      ),
    );
  }
}
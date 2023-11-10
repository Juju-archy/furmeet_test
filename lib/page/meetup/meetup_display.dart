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
        body: ListView(
          //https://github.com/JohannesMilke/user_profile_ii_example/blob/master/lib/model/user.dart => utilisation profil
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
            padding(20.0),
            ElevatedButton(
              onPressed: (){

              },
              child: Text('Modifier',  style: TextStyle(color: Colors.white, fontSize: 20),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                fixedSize: const Size(100, 30),
                side: const BorderSide(
                    width: 2,
                    color: Colors.pink
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

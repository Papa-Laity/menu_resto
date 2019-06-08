// Afficher profil user avec possibilite de modifier

import 'package:flutter/material.dart';

class ProfilUser extends StatelessWidget {

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Mon Profil"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back
          ),
          onPressed: ()=>Navigator.pop(context,
          ),
        ),
        actions: <Widget>[

          //logo Appli

          Icon(Icons.restaurant_menu),
        ],
        elevation: 30.0,
        centerTitle: true,
      ),

    );
  }
}
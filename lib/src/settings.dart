// Reglages

import 'package:flutter/material.dart';

class Settings extends StatelessWidget {

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Settings"),
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
//liste restaurant


import 'package:flutter/material.dart';

class ListResto extends StatelessWidget {

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Liste des Restaurants"),
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
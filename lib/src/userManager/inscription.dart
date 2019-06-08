//inscription pour les deux type d'uers


import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
 @override
  State<StatefulWidget> createState() {
        return InscriptionState();
  }

}

class InscriptionState extends State <Inscription>{

    Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
          title: Text("La Croisée des Fourchettes"),
          actions: <Widget>[
            Icon(Icons.restaurant_menu),
          ],
        ),
    );
  }

}
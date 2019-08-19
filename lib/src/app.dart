import 'package:flutter/material.dart';
import 'package:menu_resto/src/Accueil.dart';
import 'package:menu_resto/src/userInterFace/PasserCommande.dart';
import 'package:menu_resto/src/userInterFace/ProfilUser.dart';
import 'package:menu_resto/src/userInterFace/listeRestaurant.dart';
import 'package:menu_resto/src/models/restaurant.dart';
import 'package:menu_resto/src/settings.dart';

class App extends StatelessWidget {

  List <RestaurantClass> restaurants=[
    RestaurantClass(id:"arobaseid", nomResto: "Arobase", location: null, email:"arobase@gmail.com", logo:'images/av.png', prenomProprio:'Issa', nomProprio: 'Diouf', login: null, mdp: null),
    RestaurantClass(id:"mamouchkaid", nomResto: "Mamouchka", location: null, email:"arobase@gmail.com", logo: 'images/av.png', prenomProprio:'Issa', nomProprio: 'Diouf', login: null, mdp: null),
    RestaurantClass(id:"samabossid", nomResto: "Makomom", location: null, email:"arobase@gmail.com", logo:'images/av.png', prenomProprio:'Issa', nomProprio: 'Diouf', login: null, mdp: null),

  ];
  @override
  Widget
   build(BuildContext context) {
    return MaterialApp(
      title: 'Croisee des Restaurants',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:Accueil(restaurants),
      routes: {
        '/Accueil' : (BuildContext context) => Accueil(restaurants),
        '/listeResto' : (BuildContext context) => ListResto(),
        '/Commander' : (BuildContext context) => Commander(),
        '/Settings' : (BuildContext context) => Settings(),
        '/Profil' : (BuildContext context) => ProfilUser(),
      },

      onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(
        builder: (BuildContext context) => App(),
      ),


    );
  }
}
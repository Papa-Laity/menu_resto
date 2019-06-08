import 'package:flutter/material.dart';

class RestaurantClass {

  final String id;
  final String nomResto;
  final String location;
  final String logo;
  final String nomProprio;
  final String prenomProprio;
  final String email;
  final String login;
  final String mdp;



  RestaurantClass({
      @required this.id,
      @required this.nomResto,
      @required this.location,
      @required this.logo,
      @required this.nomProprio,
      @required this.prenomProprio,
      @required this.email,
      @required this.login,
      @required this.mdp,
      }
      );
}
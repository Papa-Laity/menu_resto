import 'package:flutter/material.dart';

class UsUser {
  final int id;
  final String prenom;
  final String nom;
  final String image;
  final String email;
  final String login;
  final String mdp;

  UsUser(
      @required this.id,
      @required this.prenom,
      @required this.nom,
      @required this.email,
      @required this.login,
      @required this.mdp,
      this.image
  );
}

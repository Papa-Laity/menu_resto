
import 'package:flutter/material.dart';
import 'package:menu_resto/src/adminInterface/AjouterRepas.dart';
import 'package:menu_resto/src/adminInterface/ProfilResto.dart';
import 'package:menu_resto/src/app.dart';
import 'package:menu_resto/src/adminInterface/mesServices.dart';

class Restaurant extends StatelessWidget {
   @override
  Widget build(BuildContext context) {

     return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('User View'),
              ),
              ListTile(
                leading: const Icon(Icons.flight_land),
                title: Text('Repas Termine'),
                onTap: () =>
                    Navigator.push(context, MaterialPageRoute(
                      builder: (
                              (BuildContext context) => App()
                      ),
                    ),
                    ),
              ),
              ListTile(
                leading: const Icon(Icons.whatshot),
                title: Text('Modifier Profil'),
                onTap: () =>
                    Navigator.push(context, MaterialPageRoute(
                      builder: (
                              (BuildContext context) => App()
                      ),
                    ),
                    ),
              ),
               ListTile(
                leading: const Icon(Icons.home),
                title: Text('Reglages'),
                onTap: () =>
                    Navigator.push(context, MaterialPageRoute(
                      builder: (
                              (BuildContext context) =>App()
                              //Accueil(this.etudiants,this.articles)
                      ),
                      ),
                    ),
              ), 
              ListTile(
                leading: const Icon(Icons.settings_applications),
                title: Text('Se Deconnecter'),
                onTap: () =>
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (
                              (BuildContext context) =>
                              App()
                      ),
                      ),
                      ),
                      ),
                  ],),),
        appBar: AppBar(
          title: Text(' - Mes Articles'),
           /*actions: <Widget>[
             IconButton(icon: Icon(Icons.touch_app),
             //onPressed: ,
               ),
            ],*/
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Mon Compte',
              ),
              Tab(
                text: 'Mes Services',
              ),
               Tab(
                text: 'Ajouter Repas',
              ), 
            ],
            ),
            elevation: 30.0,
            centerTitle: true,
          ),
        body: TabBarView(
          children: <Widget>[
            ProfilResto(),
            MesServices(),
            AddFood(),
          ],),),);
  }
/*
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(

        title: Text("Restaurant"),
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
  }*/
}
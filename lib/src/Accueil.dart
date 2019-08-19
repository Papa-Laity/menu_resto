import 'package:flutter/material.dart';
import 'package:menu_resto/src/inscription.dart';
import 'package:menu_resto/src/userInterFace/PasserCommande.dart';
import 'package:menu_resto/src/userInterFace/ProfilUser.dart';
import 'package:menu_resto/src/adminInterface/Restaurant.dart';
import 'package:menu_resto/src/authentification.dart';
import 'package:menu_resto/src/userInterFace/listeRestaurant.dart';
import 'package:menu_resto/src/models/restaurant.dart';
import 'package:menu_resto/src/settings.dart';
import 'package:menu_resto/src/userManager/accueilSuperUser.dart';

class Accueil extends StatefulWidget {
  final List<RestaurantClass> restaurants;

  Accueil(this.restaurants);

  @override
  State<StatefulWidget> createState() {
    return _AcceuilistePageState();
  }
}

class _AcceuilistePageState extends State<Accueil> {
  Widget _buildRestoItem(BuildContext context, int index) {
    List<RestaurantClass> restaurants = widget.restaurants;

    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
              //backgroundImage: AssetImage(restaurants[index].logo),
              ),
          title: Text(restaurants[index].nomResto),
          subtitle: Text('' + restaurants[index].nomProprio.toString()),
          /*onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((BuildContext context) => ()*/
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (true) {
      return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                leading: CircleAvatar(),
                automaticallyImplyLeading: false,
                title: Text('Menu'),
              ),/*
              ListTile(
                leading: const Icon(Icons.assignment),
                title: Text('Accueil Actu'),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        //builder: ((BuildContext context) => Accueil(restaurants)),
                        builder: ((BuildContext context) => ListResto()),
                      ),
                    ),
              ),
              ListTile(
                leading: const Icon(Icons.folder_shared),
                title: Text('Liste Resto'),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => ListResto()),
                      ),
                    ),
              ),*/
              ListTile(
                leading: const Icon(Icons.folder_shared),
                title: Text('Vue Resto'),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => Restaurant()),
                      ),
                    ),
              ),
              ListTile(
                leading: const Icon(Icons.rate_review),
                title: Text('Passer Commande'),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => Commander()),
                      ),
                    ),
              ),
              ListTile(
                leading: const Icon(Icons.cast_connected),
                title: Text('Se Connecter'),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => Authentification()),
                      ),
                    ),
              ),
              ListTile(
                leading: const Icon(Icons.cast_connected),
                title: Text('Super User '),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => SuperUSer()),
                      ),
                    ),
              ),
              ListTile(
                leading: const Icon(Icons.account_box),
                title: Text('Inscription'),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => Inscription()),
                      ),
                    ),
              ),
              ListTile(
                leading: const Icon(Icons.account_box),
                title: Text('Profil'),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => ProfilUser()),
                      ),
                    ),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => Settings()),
                      ),
                    ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: new FlutterLogo(colors: Colors.grey,
          size: 25.0,
          ),
          //Text("La Croisée des Fourchettes"),
          elevation: 0.0,
          centerTitle: true,

          actions: <Widget>[
            Icon(Icons.restaurant_menu),
          ],
        ),
        body:ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment:
                    Alignment(0.0, -0.40), //0.0 to center -0.40 to center
                height: 100.0,
                color: Colors.white,
                child: Text('Croisée des Saveurs',
                    style: TextStyle(/*fontFamily: ,*/ fontSize: 20.0)),
              ),/*
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(blurRadius: 2.0, color: Colors.grey)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text('YOU HAVE',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0)),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 5.0),
                          child: Text('206 ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0)),
                        )
                      ],
                    ),
                    SizedBox(width: 100),
                    Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          //color: Colors.greenAccent[108]/*.withOpacity(0.5)*/,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text('Buy more',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green)),
                      ),
                    )
                  ],
                ),
              )*/
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('RESTAURANTS',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0)),
                /*Text('PATISSERIES',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0))*/
              ],
            ),
          ),
          SizedBox(height: 10.0),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard('Restaurant 1', 'Available', 1),
              _buildCard('Restaurant 2', 'Away', 2),
              _buildCard('BAYE Food', 'Available', 3),
              _buildCard('CHEZ-MAMOUCHKA', 'Available', 4),
              _buildCard('KAMSA', 'Away', 5),
              _buildCard('EXAMPLE', 'Away', 6)

            ],
          )
        ],
      ),
         /*ListView.builder(
          itemCount: widget.restaurants.length,
          itemBuilder: _buildRestoItem,
        ),*/
      );
    }
  }
}


  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.cyan,
                  //image: DecorationImage(image: NetworkImage())
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: status == 'Away'? Colors.amber:Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  )
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(name,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold)),
          Text(status,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 15.0),
          Expanded(
            child: Container(
              width: 175.0,
              decoration: BoxDecoration(
                  color: status == 'Away' ? Colors.grey : Colors.cyan,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0))),
              child: Center(
                child: Text(
                  'Consulter',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      margin: cardIndex.isEven
          ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
          : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
    );
  }

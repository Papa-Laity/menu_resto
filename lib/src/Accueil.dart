import 'package:flutter/material.dart';
import 'package:menu_resto/src/inscription.dart';
import 'package:menu_resto/src/userInterFace/PasserCommande.dart';
import 'package:menu_resto/src/userInterFace/ProfilUser.dart';
import 'package:menu_resto/src/userInterFace/Restaurant.dart';
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
              ),
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
              ),
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
          title: Text("La Croisée des Fourchettes"),
          actions: <Widget>[
            Icon(Icons.restaurant_menu),
          ],
        ),
        body: ListView.builder(
          itemCount: widget.restaurants.length,
          itemBuilder: _buildRestoItem,
        ),
      );
    }
  }
}

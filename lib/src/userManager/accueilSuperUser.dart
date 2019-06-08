import 'package:flutter/material.dart';
import 'package:menu_resto/src/userManager/inscription.dart';
import 'package:menu_resto/src/userInterFace/Restaurant.dart';
import 'package:menu_resto/src/app.dart';
import 'package:menu_resto/src/userInterFace/listeRestaurant.dart';

class SuperUSer extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SuperUserState();
  }
}

class _SuperUserState extends State<SuperUSer> {
  Widget _buildRestoItem(BuildContext context, int index) {


    return Column(
       children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            //backgroundImage: AssetImage(restaurants[index].logo),
          ),
          //title: ,//Text(restaurants[index].nomResto),
          //subtitle: Text('' + restaurants[index].nomProprio.toString()),
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
    if (true){
      return Scaffold(

        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                leading: CircleAvatar(
                ),
                automaticallyImplyLeading: false,
                title: Text('Super User'),

              ),
              ListTile(
                leading: const Icon(Icons.assignment),
                title: Text('Liste Restos'),
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        //builder: ((BuildContext context) => Accueil(restaurants)),
                        builder: ((BuildContext context) => ListResto()),
                      ),
                    ),
              ),
              ListTile(
                leading: const Icon(Icons.folder_shared),
                title: Text('Etats Des Restos'),
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => ListResto()),
                      ),
                    ),
              ),
              ListTile(
                leading: const Icon(Icons.folder_shared),
                title: Text('Ajouter Resto'),
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => Restaurant()),
                      ),
                    ),
              ),
              ListTile(
                leading: const Icon(Icons.settings_applications),
                title: Text('Se Deconnecter'),
                onTap: () =>
                    Navigator.push(context, MaterialPageRoute(
                      builder: (
                              (BuildContext context) =>
                              App()
                      ),
                      ),
                      ),
                      ),
              ListTile(
                leading: const Icon(Icons.rate_review),
                title: Text('Inscrire'),
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => Inscription()),
                      ),
                    ),
              ),
              /*
              ListTile(
                leading: const Icon(Icons.cast_connected),
                title: Text('Se Connecter'),
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => Authentification()),
                      ),
                    ),
              ),
              ListTile(
                leading: const Icon(Icons.account_box),
                title: Text('Profil'),
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => ProfilUser( )),
                      ),
                    ),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((BuildContext context) => Settings()),
                      ),
                    ),
              ),*/

            ],
          ),
        ),
        appBar: AppBar(
          title: Text("La Croisée des Fourchettes"),
          actions: <Widget>[
            Icon(Icons.restaurant_menu),
          ],
        ),
       /* body: ListView.builder(
        //itemCount: widget.restaurants.length,
        //itemBuilder: _buildRestoItem,
      ),*/
      );
    }
  }


}

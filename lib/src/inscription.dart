//inscription pour les deux type d'uers

import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InscriptionState();
  }
}

class InscriptionState extends State<Inscription> {
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            // 1er element
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: firstNameController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something change on title Textfield');
                },
                decoration: InputDecoration(
                    labelText: 'Prenom User',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            //2em element
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: lastNameController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something change on title Textfield');
                },
                decoration: InputDecoration(
                    labelText: 'Nom',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            //3em element
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: mailController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something change on title Textfield');
                },
                decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            //4em element
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: loginController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something change on title Textfield');
                },
                decoration: InputDecoration(
                    labelText: 'Pseudo',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            // 4em element
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: passwordController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something change on description Textfield');
                },
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Sign In',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        /*setState(() {
                          debugPrint('click Save');
                        });*/
                        /*_login()*/;
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

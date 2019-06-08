// la ou on s'identifie pour se connecter

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Authentification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AuthentificationState();
  }
}

class AuthentificationState extends State<Authentification> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<List> _login() async {
    final response = await http.post("http://127.0.0.1/flutter_resto/login.php",
        body: {
          "username": loginController.text,
          "password": passwordController.text
        });

    var dataUser = json.decode(response.body);

    if (dataUser.length == 0) {
      setState(() {
        var msg = "login Fail";
        print (msg);
      });
    } else {
      print("welcome member");
    }
  }

  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
      appBar: AppBar(
        title: Text('Login and Password'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            // 1er element
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: loginController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something change on title Textfield');
                },
                decoration: InputDecoration(
                    labelText: 'Login',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            // 2em element
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
                        _login();
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

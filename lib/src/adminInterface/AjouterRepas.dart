// commercant en specifiant la categorie

import 'package:flutter/material.dart';

class AddFood extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddFoodState();
  }
}

class AddFoodState extends State<AddFood>{
  static var _catRepas =['Dejeuner','Diner','Fast-Food'];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController prixDemiPlatController = TextEditingController();
  TextEditingController prixPlatController = TextEditingController();

  @override
  Widget build(BuildContext context) {

      TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
      /*appBar: AppBar(
        title: Text('Ajout Repas'),
      ),*/
      body: Padding(
        padding: EdgeInsets.only(top: 15.0,left: 10.0,right: 10.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: DropdownButton(
                items: _catRepas.map((String dropDownStringItem){
                  return DropdownMenuItem<String>(
                    value:dropDownStringItem,
                    child : Text(dropDownStringItem),
                  );
                }).toList(),
                style: textStyle,
                value: 'Dejeuner',
                onChanged:(valueSelectedByUser){
                  setState(() {
                    debugPrint('User Choisi $valueSelectedByUser')  ;                  
                  });
                },
              ),
            ),

            // 2em element

            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: titleController,
                style: textStyle,
                onChanged: (value){
                  debugPrint('Something change on title Textfield');
                },
                decoration: InputDecoration(
                  labelText: 'Plat',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
              ),
            ),
                                    // 3em element
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: descriptionController,
                style: textStyle,
                onChanged: (value){
                  debugPrint('Something change on description Textfield');
                },
                decoration: InputDecoration(
                  labelText: 'Description',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: prixDemiPlatController,
                style: textStyle,
                onChanged: (value){
                  debugPrint('Something change on cost Textfield');
                },
                decoration: InputDecoration(
                  labelText: 'Tarif Demi-Plat',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: prixPlatController,
                style: textStyle,
                onChanged: (value){
                  debugPrint('Something change on Plat cost Textfield');
                },
                decoration: InputDecoration(
                  labelText: 'Tarif Plat',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text('Save',
                      textScaleFactor:1.5,
                       ),
                       onPressed: (){
                         setState(() {
                          debugPrint('click Save');
                                                  });
                       },
                    ),
                  ),
                  Container(width: 5.0,),
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text('Delete',
                      textScaleFactor:1.5,
                       ),
                       onPressed: (){
                         setState(() {
                          debugPrint('click delete');
                                                  });
                       },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}


  /*Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Ajouter un Repas"),
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
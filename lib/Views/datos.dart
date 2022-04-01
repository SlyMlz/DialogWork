import 'package:dialogswork/vistas/simpledialog.dart';
import 'package:flutter/material.dart';


class Datos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4a148c).withOpacity(0.5),
          title: Text('MIS DATOS PERSONALES'),
        ),
        
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          children: [ 

            Card(
              color:Color(0xffb39ddb).withOpacity(0.5),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.people),
                    title: Text("Te encuentras en la pagina de mis datos personales"),
                    trailing:Icon(Icons.arrow_right),
                    onTap: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => SimpleDialogAppuno()));
                    },
                  ),
                ],
              ),
            ),
          ],    
        ),
        
      ),
    );
  }
}
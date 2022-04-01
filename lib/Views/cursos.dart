import 'package:dialogswork/vistas/simpledialog.dart';
import 'package:flutter/material.dart';

class Cursos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffffea00).withOpacity(0.5),
          title: Text('MIS CURSOS'),
        ),

         body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          children: [ 

            Card(
              color:Color(0xffff8f00).withOpacity(0.5),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.people),
                    title: Text("Te encuentras en la pagina de mis cursos"),
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
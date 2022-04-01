// ignore_for_file: deprecated_member_use

import 'package:dialogswork/Views/contactos.dart';
import 'package:dialogswork/Views/cursos.dart';
import 'package:dialogswork/Views/datos.dart';
import 'package:dialogswork/Views/redes.dart';
import 'package:flutter/material.dart';


class SimpleDialogAppuno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4a148c).withOpacity(0.5),
          title: Text("MIS DATOS_MELIZA GOMEZ"),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              FloatingActionButton.extended(
                backgroundColor: const Color(0xff03dac6),
                foregroundColor: Colors.black,
                onPressed: () {
                   _ShowDialog(context);
                },
                icon: Icon(Icons.add),
                label: Text('Mis datos privados'),
              )
            ],
          )
        ),
      ), 
    );
  }

  void _ShowDialog(BuildContext context) {
    
    showDialog(//Widger que permite mostrar el simpledialog
      context: context, 
      builder: (BuildContext context){
        return SimpleDialog(//Es el widget con las caracteristicas y propiedades del dialogo
          title: Text("Seleccione opcion"),
          children: [
            ListTile(
              title: Text("Mis contactos"),
              leading: Icon(Icons.edit),
            onTap: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Contactos()));
            }
            ),

            ListTile(
              title: Text("Redes sociales"),
              leading: Icon(Icons.phone),
            onTap: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Redes()));
            }
            ),

            ListTile(
              title: Text("Datos personales"),
              leading: Icon(Icons.person),
            onTap: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Datos()));
            }
            ),

            ListTile(
              title: Text("Mis cursos"),
              leading: Icon(Icons.book),
            onTap: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Cursos()));
            }
            ),

            
          ],

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)),
            backgroundColor: Color(0xff01579b).withOpacity(0.5),
        

        );
         
      },
      barrierDismissible: false
     );

     

  }
}
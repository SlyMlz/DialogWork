// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';



class AlertDialoguno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple dialog App'),
        ),
        body: Center(
          child: FlatButton(
            child: Text("Ver opciones"),
            onPressed: () {
              _AlertDialog(context);

            }
            ),

        ),
      ),
    );
  }

  void _AlertDialog(BuildContext context) {
    showDialog(//Widger que permite mostrar el alertdialog
      context: context, 
      builder: (BuildContext context){
        return AlertDialog(
          title: const Text("Pregunta ?"),
          content: const Text("¿Esta seguro de eliminar el contenido?"),
          actions: [
            FlatButton(
              child: const Text("Si"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

            FlatButton(
              child: const Text("Cancelar"),
              onPressed: () {
                Navigator.pop(context);
              },
              ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)),
            backgroundColor: Colors.blue,
        );
// ignore: dead_code
        barrierDismissible: false;
      }
      
    );
    
  } 
}

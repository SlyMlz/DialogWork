
import 'package:dialogswork/vistas/simpledialog.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/",
      routes: {
        "/":(BuildContext context) =>SimpleDialogAppuno(),
        
      },
    );
  }
}
// esta es una forma de estructura codigo



// Esta es una importacion de material dart
import 'package:flutter/material.dart';
import 'package:test_flutter/src/pages/contador_pages.dart';
import 'package:test_flutter/src/pages/home_page.dart'; // gracias a los snipet podemos dar clik en el autocompletado

// esta es una clase o mejor dicho un widget, dentro tiene que ir a fuerza un build
class MyAPP extends StatelessWidget {
  @override  // sobreescribiendo el metod de statelessWidget
  Widget build(BuildContext context) { // context contiene la informacion del arbol de widget, tambien temas, iconos etc
    return MaterialApp( // home tambien es un widget, es como la vista principal

    // podemos tener varios widget dentro de otros, recordar poner el cursor para saber si un widget puede implementar otro widgets
      home: Center( 
      // child: HomePage(), // qui estoy trayendo al homepage
      child: ContadorPages(),
        ),
     
    ); // espera argumentos de tipo wPidget, revisar la documentoacion
  }
}
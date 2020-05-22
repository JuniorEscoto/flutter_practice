// recordar siempre realizar la importaciona de material dart, para que salga la autoayuida
import 'package:flutter/material.dart';

//class, como lo saben un widgets

class HomePage extends StatelessWidget { // statelessWidget son clases inmutables


  // esta es una clase para por si tenemos varios widgets que queramos que tengan las mismas propiedades
  // como en el caso del widget Text

   // final indica que este widgets no puede cambiar, es algo asi como una constante, ademas estamos dentros
   // de un stateleeswidget y esa es una regla
   final TextStyle estilosText  = new TextStyle(
     color: Colors.indigo,
            fontSize: 25.5,
            decorationStyle: TextDecorationStyle.solid
   );

   // cracion de variable
   final int conteo = 1;
  @override
  Widget build(BuildContext context) {
    // recordar que siempre debe retornar un widget, ya que eso esta especificado en un build
    return 
    Scaffold(
       appBar: AppBar(
         title: Text("myAppBars"),
         elevation: 6.2,
         excludeHeaderSemantics: true,
         backgroundColor: Color.fromRGBO(204, 233, 87, 3.5),
         iconTheme: IconThemeData(
           color: Color(1),
           opacity: 2.1,
           size: 35
         ),
       ),
       body: Center(
         
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text("click me $conteo !!", style: estilosText,), // estilos text viene de arriba
             IconButton(
               icon: Icon(Icons.accessibility_new),
               color: Colors.red,
               enableFeedback: true,
               iconSize: 99.1,
               splashColor: Colors.yellow,
               tooltip: "Me la has tocado",
               hoverColor: Colors.green,
               onPressed: () {}
             )
           ],
         ) 

        
       ),
       floatingActionButton: FloatingActionButton(
         onPressed: (){
           print("click");
          // conteo =+1; este codigo no funciona porque no es un steellesswidgets
         },
         child: Icon(Icons.add),

         ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
         floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    ); // widget personalizado
    
  }
}
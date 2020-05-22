import 'package:flutter/material.dart';

class ContadorPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPagesState();
  }
}

// se debe crear un estado de la pagina contadorPages, asi es como funciona el statefulWidgets
// esta clase solo se va a utilizar en esta pagina del contador_pages
// el guion bajo _ContadorPagesState indica que es privado
class _ContadorPagesState extends State<ContadorPages>{
  
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
    int _conteo = 1;
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
             Text("click me $_conteo !!", style: estilosText,), // estilos text viene de arriba
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
       floatingActionButton: _crearBotones(),
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    ); // widget personalizado
    
  }


  // creacion de un widget para implementar los floating button
  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
         SizedBox(width: 25),
          FloatingActionButton(
            onPressed: (){
              print("click");
              // conteo =+1; este codigo no funciona porque no es un steellesswidgets

              // ahora estamos en un statefulwidgets
              _conteo++;


              // este metodo lo que hara es redibujar nuestro state, osea cuando de click en nuestro floatingButton
              // ese se redibujara
              setState(() {
                
              });
            },
            child: Icon(Icons.add),
          ),
          // este widget es para hacer una separacion
          Expanded(child: SizedBox(),), // esto lo que hace es dar una dimensionentre los dos button flotantes
          FloatingActionButton(onPressed: (){
            _conteo--;

            setState(() {
              
            });
          },
           child: Icon(Icons.remove),)
          // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        ],
      );
  }
}
import 'package:dart_application_getset/dart_application_getset.dart' as dart_application_getset;

import 'dart:math' as math;
//Importa herramientas matematicas

void main() {
 	Cuadrado cuadrado = new Cuadrado(5);
  print('area: ${cuadrado.area}');
  cuadrado.area=25;
  print('El lado segun el area es: ${cuadrado.lado}');
  
}
class Cuadrado{
  double lado = 0; //
  Cuadrado( this.lado);  
  //Los getter no llevan parentesis
  double get area{
    return this.lado*this.lado;
  }
  //Los setter se definen con un igual
  set area(double valor){
    print('set: $valor');
    this.lado = math.sqrt(valor);
  }
}

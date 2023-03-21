import 'package:dart_application_abstract/dart_application_abstract.dart' as dart_application_abstract;

void main() {
  final perro = new Perro();
  perro.emitirSonido();
  final gato = new Gato();
  gato.emitirSonido();
}
abstract class Animal{
  int? patas;
  void emitirSonido();

}

class Perro implements Animal{
  int? patas;
  void emitirSonido(){
    print("Guau");
  }
}

class Gato implements Animal{
  int? cola;
  int? patas;
  void emitirSonido(){
    print("Miau");
  }
}
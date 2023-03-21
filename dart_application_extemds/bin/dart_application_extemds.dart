
void main() {
  print('Hello world');
  final superman = new Heroe('Clark Kent');
  print(superman);
  final luthor = new Villano('Lex Luthor');
  print(luthor);

}

abstract class Personaje {
  String? poder;
  String nombre;
  Personaje (this.nombre);
  @override
  String toString(){
    return '$nombre - $poder';
  }
}

//A diferencia de la implementacion, al heredarlo estan implementados los metodos de la bastracta
class Heroe extends Personaje{
  //Si creo aqui variables van a ser unicos de heroe, que va a tener los extendidos de personaje junto a los nuevos atributos
  int valentia = 100;
  Heroe( String nombre): super(nombre);
}

class Villano extends Personaje{
  //Si creo aqui variables van a ser unicos de heroe, que va a tener los extendidos de personaje junto a los nuevos atributos
  int maldad=50;
  //Los : marcan que se va a ejecutar antes que el constructor
  Villano(String nombre):super(nombre);
}
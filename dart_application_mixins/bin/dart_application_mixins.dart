
abstract class Animal {}
abstract class Mamifero extends Animal {}
abstract class Pez extends Animal {}
abstract class Ave extends Animal {}
abstract class Volador{
  void volar() => print('estoy volando');
}

abstract class Caminante{
  void caminar() => print('estoy caminando');
}

abstract class Nadador{
  void nadar() => print('estoy nadando');
}
/*
 * Implementacion de un esquema de polimorfismo del punto 19 de la seccion 2 Undemy
 */
//los mixins se asignan con el with y si es mas de uno con ,
class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador , Caminante{}
class Gato extends Mamifero with Caminante{}
class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}
class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

void main() {
  //final flipper = new Delfin();
  //flipper.nadar();

  //final batman = new Murcielago();
  //batman.caminar();
  //batman.volar();

  //final cat = new Gato();
  //cat.caminar();

  //final palomo = new Paloma();
  //palomo.caminar();
  //palomo.volar();

  //final feo = new Pato();
  //feo.caminar();
  //feo.volar();
  //feo.nadar();

  //final blanco = new Tiburon();
  //blanco.nadar();

  //final pezVolador = new PezVolador();
  //pezVolador.nadar();
  //pezVolador.volar();

}

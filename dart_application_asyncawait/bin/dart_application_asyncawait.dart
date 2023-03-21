
//Para utilizar el metodo async debe de estar dentro de una funcion asincrona
void main() async {
  print('Antes de la peticion');
  //El then es lo que se va a ejecutar despues de que el future se realice
  /*
  httpGet('https://api.nasa.com/aliens')
  .then( (data){
      print( data.toLowerCase() );
  });
*/
  //Hacemos asincrono la peticion https de 3 segundos
  final data = await httpGet('https://api.nasa.com/aliens');
  print(data);
  //El resultadop de normal sale lo ultimo, para hacer que se ejcute antes que el resto debemos modificar
  //getNombre('10').then(print);
  //Modificado para que salga antes:
  final nombre = await getNombre('10');
  print(nombre);
  print('Fin programa');
}

//El future es como un promise en angular
//Un future no es más que una tarea asíncrona que se hace a destiempo, se hace a un hilo diferente de nuestra aplicación.
//Especificamos que va a devolver el future
Future<String> httpGet(String url){
  //delayed le permite realizar la tarea asincrona en la cantidad de tiempo
  return Future.delayed( new Duration ( seconds:3),(){
    return 'Hola mundo - 3 segundos';
  });
}
//El async debe de regresar un tipo Future
//Si se quita el async da error pues se devolveria un simple string
Future<String> getNombre(String id) async{
  return '$id - Fernando';
}
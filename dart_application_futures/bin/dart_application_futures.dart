
//En el caso en que queramos hacer un peticion https
void main() {
  print('Antes de la peticion');
  //El then es lo que se va a ejecutar despues de que el future se realice
  httpGet('https://api.nasa.com/aliens')
  .then( (data){
      print( data.toLowerCase() );
  });
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

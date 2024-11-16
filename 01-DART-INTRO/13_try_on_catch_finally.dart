void main() async{
  print('Inicio del programa');

  try {
    final value = await httpGet('https://google.com');
    print(value);
  } on Exception catch(err) {
    print("Tenemos una excepcion en la petición $err");
  }
  catch (e) {
    print('UPS algo critico paso $e');
  } finally {
    print('Finalizo la petición');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  // throw Exception('No hay parametros de petición');
  throw 'Error en la petición';
  // return 'Respuesta de la petición';
}
void main() async{
  print('Inicio del programa');

  try {
    final value = await httpGet('https://google.com');
    print(value);
  } catch (e) {
    print(e);
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la petición';
  // return 'Respuesta de la petición';
}
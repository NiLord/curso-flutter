void main() {
  print('Inicio del programa');

  httpGet('Test').then((value) {
    print(value);
  }).catchError((errr) {
    print('Error: $errr');
  });

  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    // return 'Respuesta de la petición';
    throw 'Error en la petición';
  });
}

void main() {
  print(greetEveryone());
  print('Sum: ${addTwoNumbers(10, 20)}');
  print('Sum opcional: ${addTwoNumbersOptional(10)}');

  print(greetPerson(name: 'Fernando'));
  print(greetPerson(name: 'Fernando', message: 'Hi'));
}

String greetEveryone() => 'Hello everyone';

int addTwoNumbers(int a, int b) => a + b;

/// Adds two numbers, but if the second one is not given, it assumes 0.
///
int addTwoNumbersOptional(int a, [int b = 0]) {
  // b ??= 0;

  return a + b;
}

String greetPerson({required String name, String message = 'Hola, '}) {
  return '$message $name';
}

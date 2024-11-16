void main() {

  emitNumbers().listen( (value) {
    print('Stream value: $value');
  });

}

/// Emits a sequence of numbers every second, starting from 0, taking 5 elements.
Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}

class NativeException implements Exception {
  final String info;

  NativeException(this.info);

  @override
  String toString() => info;
}

import 'dart:isolate';

class IsolateMessage<T> {
  final T payload;
  final SendPort port;

  IsolateMessage({
    required this.payload,
    required this.port,
  });
}

import 'dart:async';
import 'dart:isolate';

import '../models/isolate_message.dart';

Future<R> proceedOnIsolate<P, R>(P payload, void Function(IsolateMessage<P>) function) async {
  final receivePort = ReceivePort();
  final completer = Completer<R>();
  final message = IsolateMessage<P>(
    payload: payload,
    port: receivePort.sendPort,
  );
  final isolate = await Isolate.spawn(function, message);

  receivePort.listen((data) {
    completer.complete(data as R);
    isolate.kill(priority: Isolate.immediate);
    receivePort.close();
  });

  return completer.future;
}

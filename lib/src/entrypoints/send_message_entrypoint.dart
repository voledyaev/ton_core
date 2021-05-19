import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:tuple/tuple.dart';

import '../bindings/bindings.dart';
import '../models/isolate_message.dart';
import '../models/native_response_extern.dart';

void sendMessageEntryPoint(IsolateMessage<Tuple3<int, int, String>> message) {
  final bindings = Bindings.instance();

  final Pointer<Utf8> messagePtr = message.payload.item3.toNativeUtf8();
  final NativeResponseExtern response = bindings.sendMessage(
    message.payload.item1,
    message.payload.item2,
    messagePtr,
  );

  final result = response.toDart();
  bindings.cstringFree(response.payload);

  message.port.send(result);
}

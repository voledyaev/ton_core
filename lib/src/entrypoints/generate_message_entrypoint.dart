import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:tuple/tuple.dart';

import '../bindings/bindings.dart';
import '../models/isolate_message.dart';
import '../models/native_response_extern.dart';

void generateMessageEntryPoint(
    IsolateMessage<Tuple6<Tuple3<int, int, int>, String, String, String, String, String>> message) {
  final bindings = Bindings.instance();

  final Pointer<Utf8> addressPtr = message.payload.item2.toNativeUtf8();
  final Pointer<Utf8> publicKeyPtr = message.payload.item3.toNativeUtf8();
  final Pointer<Utf8> privateKeyPtr = message.payload.item4.toNativeUtf8();
  final Pointer<Utf8> methodPtr = message.payload.item5.toNativeUtf8();
  final Pointer<Utf8> paramsPtr = message.payload.item6.toNativeUtf8();

  final NativeResponseExtern response = bindings.generateMessage(
    message.payload.item1.item1,
    message.payload.item1.item2,
    message.payload.item1.item3,
    addressPtr,
    publicKeyPtr,
    privateKeyPtr,
    methodPtr,
    paramsPtr,
  );

  final result = response.toDart();
  bindings.cstringFree(response.payload);

  message.port.send(result);
}

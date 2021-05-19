import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:tuple/tuple.dart';

import '../bindings/bindings.dart';
import '../models/isolate_message.dart';
import '../models/native_response_extern.dart';

void generateAddressEntryPoint(IsolateMessage<Tuple4<int, int, String, String>> message) {
  final bindings = Bindings.instance();

  final Pointer<Utf8> publicKeyPtr = message.payload.item3.toNativeUtf8();
  final Pointer<Utf8> initialDataPtr = message.payload.item4.toNativeUtf8();

  final NativeResponseExtern response = bindings.generateAddress(
    message.payload.item1,
    message.payload.item2,
    publicKeyPtr,
    initialDataPtr,
  );

  final result = response.toDart();
  bindings.cstringFree(response.payload);

  message.port.send(result);
}

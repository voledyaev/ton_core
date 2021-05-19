import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../bindings/bindings.dart';
import '../models/isolate_message.dart';
import '../models/native_response_extern.dart';

void generateKeyPairFromMnemonicEntryPoint(IsolateMessage<String> message) {
  final bindings = Bindings.instance();

  final Pointer<Utf8> payloadPtr = message.payload.toNativeUtf8();
  final NativeResponseExtern response = bindings.generateKeyPairFromMnemonic(payloadPtr);

  final result = response.toDart();
  bindings.cstringFree(response.payload);

  message.port.send(result);
}

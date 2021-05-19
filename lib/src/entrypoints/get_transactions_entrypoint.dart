import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:tuple/tuple.dart';

import '../bindings/bindings.dart';
import '../models/isolate_message.dart';
import '../models/native_response_extern.dart';

void getTransactionsEntryPoint(IsolateMessage<Tuple4<int, String, int, int>> message) {
  final bindings = Bindings.instance();

  final Pointer<Utf8> addressPtr = message.payload.item2.toNativeUtf8();
  final NativeResponseExtern response = bindings.getTransactions(
    message.payload.item1,
    addressPtr,
    message.payload.item3,
    message.payload.item4,
  );

  final result = response.toDart();
  bindings.cstringFree(response.payload);

  message.port.send(result);
}

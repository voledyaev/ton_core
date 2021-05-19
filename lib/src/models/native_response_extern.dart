import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'native_response.dart';
import 'native_response_status.dart';

class NativeResponseExtern extends Struct {
  @Int32()
  external int statusCode;
  external Pointer<Utf8> payload;
}

extension ToDart on NativeResponseExtern {
  NativeResponse toDart() => NativeResponse(
        status: NativeResponseStatus.values[statusCode],
        payload: payload.toDartString(),
      );
}

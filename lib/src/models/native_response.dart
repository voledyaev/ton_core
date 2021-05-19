import 'native_exception.dart';
import 'native_response_status.dart';

class NativeResponse {
  NativeResponseStatus status;
  String payload;

  NativeResponse({
    required this.status,
    required this.payload,
  });
}

extension Handle on NativeResponse {
  String handle() {
    switch (status) {
      case NativeResponseStatus.success:
        return payload;
      case NativeResponseStatus.error:
        throw NativeException(payload);
    }
  }
}

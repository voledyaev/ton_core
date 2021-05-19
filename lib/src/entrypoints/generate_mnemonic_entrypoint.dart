import '../bindings/bindings.dart';
import '../models/isolate_message.dart';
import '../models/native_response_extern.dart';

void generateMnemonicEntryPoint(IsolateMessage<void> message) {
  final bindings = Bindings.instance();

  final NativeResponseExtern response = bindings.generateMnemonic();

  final result = response.toDart();
  bindings.cstringFree(response.payload);

  message.port.send(result);
}

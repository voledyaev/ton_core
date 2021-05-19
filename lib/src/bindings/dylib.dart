import 'dart:ffi';
import 'dart:io';

DynamicLibrary dlopenPlatformSpecific() {
  if (Platform.isAndroid) {
    return DynamicLibrary.open("libton_core.so");
  } else if (Platform.isIOS) {
    return DynamicLibrary.process();
  } else {
    throw UnimplementedError("Platform not implemented");
  }
}

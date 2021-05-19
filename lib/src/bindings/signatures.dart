import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../models/native_response_extern.dart';

typedef GetAccount = NativeResponseExtern Function(
  int,
  Pointer<Utf8>,
);
typedef GetAccountFFI = NativeResponseExtern Function(
  Int32,
  Pointer<Utf8>,
);

typedef GetTransactions = NativeResponseExtern Function(
  int,
  Pointer<Utf8>,
  int,
  int,
);
typedef GetTransactionsFFI = NativeResponseExtern Function(
  Int32,
  Pointer<Utf8>,
  Uint64,
  Uint32,
);

typedef GenerateMessage = NativeResponseExtern Function(
  int,
  int,
  int,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
);
typedef GenerateMessageFFI = NativeResponseExtern Function(
  Int32,
  Int32,
  Uint32,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
);

typedef EstimateFees = NativeResponseExtern Function(
  int,
  int,
  Pointer<Utf8>,
);
typedef EstimateFeesFFI = NativeResponseExtern Function(
  Int32,
  Int32,
  Pointer<Utf8>,
);

typedef SendMessage = NativeResponseExtern Function(
  int,
  int,
  Pointer<Utf8>,
);
typedef SendMessageFFI = NativeResponseExtern Function(
  Int32,
  Int32,
  Pointer<Utf8>,
);

typedef GenerateMnemonic = NativeResponseExtern Function();
typedef GenerateMnemonicFFI = NativeResponseExtern Function();

typedef GenerateKeyPairFromMnemonic = NativeResponseExtern Function(Pointer<Utf8>);
typedef GenerateKeyPairFromMnemonicFFI = NativeResponseExtern Function(Pointer<Utf8>);

typedef GenerateDeployMessage = NativeResponseExtern Function(
  int,
  int,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
);
typedef GenerateDeployMessageFFI = NativeResponseExtern Function(
  Int32,
  Int32,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Pointer<Utf8>,
);

typedef GenerateAddress = NativeResponseExtern Function(
  int,
  int,
  Pointer<Utf8>,
  Pointer<Utf8>,
);
typedef GenerateAddressFFI = NativeResponseExtern Function(
  Int32,
  Int32,
  Pointer<Utf8>,
  Pointer<Utf8>,
);

typedef CstringFree = void Function(Pointer<Utf8>);
typedef CstringFreeFFI = Void Function(Pointer<Utf8>);

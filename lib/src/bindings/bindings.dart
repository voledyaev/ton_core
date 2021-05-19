import 'dart:ffi';

import 'dylib.dart';
import 'signatures.dart';

class Bindings {
  static Bindings? _instance;
  late DynamicLibrary _dynamicLibrary;
  late GetAccount getAccount;
  late GetTransactions getTransactions;
  late GenerateMessage generateMessage;
  late EstimateFees estimateFees;
  late SendMessage sendMessage;
  late GenerateMnemonic generateMnemonic;
  late GenerateKeyPairFromMnemonic generateKeyPairFromMnemonic;
  late GenerateDeployMessage generateDeployMessage;
  late GenerateAddress generateAddress;
  late CstringFree cstringFree;

  Bindings._();

  factory Bindings.instance() {
    if (_instance == null) {
      final instance = Bindings._();

      instance._dynamicLibrary = dlopenPlatformSpecific();

      instance.getAccount = instance._dynamicLibrary.lookupFunction<GetAccountFFI, GetAccount>("get_account");
      instance.getTransactions =
          instance._dynamicLibrary.lookupFunction<GetTransactionsFFI, GetTransactions>("get_transactions");
      instance.generateMessage =
          instance._dynamicLibrary.lookupFunction<GenerateMessageFFI, GenerateMessage>("generate_message");
      instance.estimateFees = instance._dynamicLibrary.lookupFunction<EstimateFeesFFI, EstimateFees>("estimate_fees");
      instance.sendMessage = instance._dynamicLibrary.lookupFunction<SendMessageFFI, SendMessage>("send_message");
      instance.generateMnemonic =
          instance._dynamicLibrary.lookupFunction<GenerateMnemonicFFI, GenerateMnemonic>("generate_mnemonic");
      instance.generateKeyPairFromMnemonic = instance._dynamicLibrary
          .lookupFunction<GenerateKeyPairFromMnemonicFFI, GenerateKeyPairFromMnemonic>(
              "generate_keypair_from_mnemonic");
      instance.generateDeployMessage = instance._dynamicLibrary
          .lookupFunction<GenerateDeployMessageFFI, GenerateDeployMessage>("generate_deploy_message");
      instance.generateAddress =
          instance._dynamicLibrary.lookupFunction<GenerateAddressFFI, GenerateAddress>("generate_address");
      instance.cstringFree = instance._dynamicLibrary.lookupFunction<CstringFreeFFI, CstringFree>("cstring_free");

      _instance = instance;
    }

    return _instance!;
  }
}

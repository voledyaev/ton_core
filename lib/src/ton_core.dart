import 'dart:convert';

import 'package:tuple/tuple.dart';

import 'entrypoints/estimate_fees_entrypoint.dart';
import 'entrypoints/generate_address_entrypoint.dart';
import 'entrypoints/generate_deploy_message_entrypoint.dart';
import 'entrypoints/generate_keypair_from_mnemonic_entrypoint.dart';
import 'entrypoints/generate_message_entrypoint.dart';
import 'entrypoints/generate_mnemonic_entrypoint.dart';
import 'entrypoints/get_account_entrypoint.dart';
import 'entrypoints/get_transactions_entrypoint.dart';
import 'entrypoints/send_message_entrypoint.dart';
import 'models/account.dart';
import 'models/contract_type.dart';
import 'models/keypair.dart';
import 'models/message.dart';
import 'models/native_exception.dart';
import 'models/native_response.dart';
import 'models/transaction.dart';
import 'utils/proceed_on_isolate.dart';

class TonCore {
  static TonCore? _instance;

  TonCore._();

  factory TonCore.instance() {
    if (_instance == null) {
      final instance = TonCore._();
      _instance = instance;
    }

    return _instance!;
  }

  Future<String> generateMnemonic() async {
    final response = await proceedOnIsolate<void, NativeResponse>(null, generateMnemonicEntryPoint);

    return response.handle();
  }

  Future<KeyPair> generateKeyPairFromMnemonic(String mnemonic) async {
    final response = await proceedOnIsolate<String, NativeResponse>(mnemonic, generateKeyPairFromMnemonicEntryPoint);

    final string = response.handle();
    final json = jsonDecode(string) as Map<String, dynamic>;

    return KeyPair.fromJson(json);
  }

  Future<String> generateAddress({
    required ContractType contractType,
    required int wc,
    required String publicKey,
    required String initialData,
  }) async {
    final response = await proceedOnIsolate<Tuple4<int, int, String, String>, NativeResponse>(
      Tuple4<int, int, String, String>(
        contractType.index,
        wc,
        publicKey,
        initialData,
      ),
      generateAddressEntryPoint,
    );

    return response.handle();
  }

  Future<Message> generateDeployMessage({
    required ContractType contractType,
    required int wc,
    required String address,
    required String publicKey,
    required String privateKey,
    required String params,
  }) async {
    final response = await proceedOnIsolate<Tuple6<int, int, String, String, String, String>, NativeResponse>(
      Tuple6<int, int, String, String, String, String>(
        contractType.index,
        wc,
        address,
        publicKey,
        privateKey,
        params,
      ),
      generateDeployMessageEntryPoint,
    );

    final string = response.handle();
    final json = jsonDecode(string) as Map<String, dynamic>;

    return Message.fromJson(json);
  }

  Future<Message> generateMessage({
    required ContractType contractType,
    required int wc,
    required int lifetime,
    required String address,
    required String publicKey,
    required String privateKey,
    required String method,
    required String params,
  }) async {
    final response =
        await proceedOnIsolate<Tuple6<Tuple3<int, int, int>, String, String, String, String, String>, NativeResponse>(
      Tuple6<Tuple3<int, int, int>, String, String, String, String, String>(
        Tuple3<int, int, int>(
          contractType.index,
          wc,
          lifetime,
        ),
        address,
        publicKey,
        privateKey,
        method,
        params,
      ),
      generateMessageEntryPoint,
    );

    final string = response.handle();
    final json = jsonDecode(string) as Map<String, dynamic>;

    return Message.fromJson(json);
  }

  Future<int> estimateFees({
    required ContractType contractType,
    required int wc,
    required Message message,
  }) async {
    final response = await proceedOnIsolate<Tuple3<int, int, String>, NativeResponse>(
      Tuple3<int, int, String>(
        contractType.index,
        wc,
        jsonEncode(message.toJson()),
      ),
      estimateFeesEntryPoint,
    );

    return int.parse(response.handle());
  }

  Future<int> sendMessage({
    required ContractType contractType,
    required int wc,
    required Message message,
  }) async {
    final response = await proceedOnIsolate<Tuple3<int, int, String>, NativeResponse>(
      Tuple3<int, int, String>(
        contractType.index,
        wc,
        jsonEncode(message.toJson()),
      ),
      sendMessageEntryPoint,
    );

    return int.parse(response.handle());
  }

  Future<Account> getAccount({
    required int wc,
    required String address,
  }) async {
    final response = await proceedOnIsolate<Tuple2<int, String>, NativeResponse>(
      Tuple2<int, String>(
        wc,
        address,
      ),
      getAccountEntryPoint,
    );

    final string = response.handle();
    final list = jsonDecode(string) as List<dynamic>;
    if (list.isNotEmpty) {
      return Account.fromJson(list.first as Map<String, dynamic>);
    } else {
      throw NativeException('Account not found');
    }
  }

  Future<List<Transaction>> getTransactions({
    required int wc,
    required String address,
    required int lastTransactionLt,
    required int limit,
  }) async {
    final response = await proceedOnIsolate<Tuple4<int, String, int, int>, NativeResponse>(
      Tuple4<int, String, int, int>(
        wc,
        address,
        lastTransactionLt,
        limit,
      ),
      getTransactionsEntryPoint,
    );

    final string = response.handle();
    final json = jsonDecode(string) as List<dynamic>;

    return json.map((e) => Transaction.fromJson(e as Map<String, dynamic>)).toList();
  }
}

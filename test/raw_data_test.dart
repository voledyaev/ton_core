import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ton_core/src/models/submit_transaction_data.dart';
import 'package:ton_core/src/models/wallet_initial_data.dart';

void main() {
  test('Public keys should be represented in hex', () {
    const walletInitialData = WalletInitialData(
      ownersPublicKeys: [
        'abc',
      ],
      reqConfirms: 1,
    );

    final owner = walletInitialData.toJson()['owners'][0] as String;

    expect(owner, '0xabc');

    debugPrint(owner);
  });

  test('Wallet initial data correctly converted to json string', () {
    const walletInitialData = WalletInitialData(
      ownersPublicKeys: [
        'abc',
      ],
      reqConfirms: 1,
    );

    final owner = jsonEncode(walletInitialData.toJson());

    expect(owner, '{"owners":["0xabc"],"reqConfirms":1}');

    debugPrint(owner);
  });

  test('Submit transaction data correctly converted to json string', () {
    const submitTransactionData = SubmitTransactionData(
      dest: "0:abc",
      value: 1,
      bounce: true,
      allBalance: false,
      payload: "",
    );

    final string = jsonEncode(submitTransactionData.toJson());

    expect(string, '{"dest":"0:abc","value":1,"bounce":true,"allBalance":false,"payload":""}');

    debugPrint(string);
  });
}

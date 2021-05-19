import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ton_core/ton_core.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
              ),
              onPressed: () async {
                try {
                  final instance = TonCore.instance();

                  final result1 = await instance.generateMnemonic();
                  debugPrint(result1);

                  final result2 = await instance.generateKeyPairFromMnemonic(result1);
                  debugPrint("$result2");

                  final result3 = await instance.generateAddress(
                    contractType: ContractType.safeMultisigWallet,
                    wc: 0,
                    publicKey: result2.public,
                    initialData: "{}",
                  );
                  debugPrint(result3);

                  final result4 = await instance.generateDeployMessage(
                    contractType: ContractType.safeMultisigWallet,
                    wc: 0,
                    address: result3,
                    publicKey: result2.public,
                    privateKey: result2.secret,
                    params: jsonEncode(WalletInitialData(
                      ownersPublicKeys: [result2.public],
                      reqConfirms: 1,
                    ).toJson()),
                  );
                  debugPrint("$result4");

                  final result5 = await instance.generateMessage(
                    contractType: ContractType.safeMultisigWallet,
                    wc: 0,
                    lifetime: 30,
                    address: result3,
                    publicKey: result2.public,
                    privateKey: result2.secret,
                    method: "submitTransaction",
                    params: jsonEncode(const SubmitTransactionData(
                      dest: "0:d9c14299c2016a5fb4a7299afea8008d6c99b34fd46402cb2bbf1a5bffc0245f",
                      value: 1000000000,
                      bounce: true,
                      allBalance: false,
                      payload: "",
                    ).toJson()),
                  );
                  debugPrint("$result5");

                  final result6 = await instance.estimateFees(
                    contractType: ContractType.safeMultisigWallet,
                    wc: 0,
                    message: result5,
                  );
                  debugPrint("$result6");

                  final result7 = await instance.sendMessage(
                    contractType: ContractType.safeMultisigWallet,
                    wc: 0,
                    message: result5,
                  );
                  debugPrint("$result7");

                  final result8 = await instance.getAccount(
                    wc: 0,
                    address: result3,
                  );
                  debugPrint("$result8");

                  final result9 = await instance.getTransactions(
                    wc: 0,
                    address: result3,
                    lastTransactionLt: 13599123000004,
                    limit: 25,
                  );
                  debugPrint("$result9");
                } catch (err, st) {
                  debugPrint("$err");
                  debugPrint("$st");
                }
              },
              child: const Text('PRESS ME'),
            ),
          ),
        ),
      );
}

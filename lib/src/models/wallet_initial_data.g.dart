// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_initial_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletInitialData _$_$_WalletInitialDataFromJson(Map<String, dynamic> json) {
  return _$_WalletInitialData(
    ownersPublicKeys:
        (json['owners'] as List<dynamic>).map((e) => e as String).toList(),
    reqConfirms: json['reqConfirms'] as int,
  );
}

Map<String, dynamic> _$_$_WalletInitialDataToJson(
        _$_WalletInitialData instance) =>
    <String, dynamic>{
      'owners': WalletInitialData._publicKeyToJson(instance.ownersPublicKeys),
      'reqConfirms': instance.reqConfirms,
    };

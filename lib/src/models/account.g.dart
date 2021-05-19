// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$_$_AccountFromJson(Map<String, dynamic> json) {
  return _$_Account(
    accTypeName: json['acc_type_name'] as String,
    balance: Account._balanceFromJson(json['balance'] as String?),
    lastPaid: json['last_paid'] as int?,
    lastTransLt: Account._lastTransLtFromJson(json['last_trans_lt'] as String?),
    data: json['data'] as String?,
  );
}

Map<String, dynamic> _$_$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'acc_type_name': instance.accTypeName,
      'balance': instance.balance,
      'last_paid': instance.lastPaid,
      'last_trans_lt': instance.lastTransLt,
      'data': instance.data,
    };

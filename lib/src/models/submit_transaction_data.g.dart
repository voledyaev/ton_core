// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_transaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubmitTransactionData _$_$_SubmitTransactionDataFromJson(
    Map<String, dynamic> json) {
  return _$_SubmitTransactionData(
    dest: json['dest'] as String,
    value: json['value'] as int,
    bounce: json['bounce'] as bool,
    allBalance: json['allBalance'] as bool,
    payload: json['payload'] as String,
  );
}

Map<String, dynamic> _$_$_SubmitTransactionDataToJson(
        _$_SubmitTransactionData instance) =>
    <String, dynamic>{
      'dest': instance.dest,
      'value': instance.value,
      'bounce': instance.bounce,
      'allBalance': instance.allBalance,
      'payload': instance.payload,
    };

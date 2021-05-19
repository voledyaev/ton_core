// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionMessage _$_$_TransactionMessageFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionMessage(
    src: json['src'] as String,
    dst: json['dst'] as String,
    value: TransactionMessage._valueFromJson(json['value'] as String?),
    fwdFee: TransactionMessage._valueFromJson(json['fwd_fee'] as String?),
  );
}

Map<String, dynamic> _$_$_TransactionMessageToJson(
        _$_TransactionMessage instance) =>
    <String, dynamic>{
      'src': instance.src,
      'dst': instance.dst,
      'value': instance.value,
      'fwd_fee': instance.fwdFee,
    };

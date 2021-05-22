// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$_$_TransactionFromJson(Map<String, dynamic> json) {
  return _$_Transaction(
    id: json['id'] as String,
    lt: Transaction._ltFromJson(json['lt'] as String?),
    now: json['now'] as int,
    prevTransLt:
        Transaction._prevTransLtFromJson(json['prev_trans_lt'] as String?),
    inMessage:
        TransactionMessage.fromJson(json['in_message'] as Map<String, dynamic>),
    outMessages: (json['out_messages'] as List<dynamic>)
        .map((e) => TransactionMessage.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lt': instance.lt,
      'now': instance.now,
      'prev_trans_lt': instance.prevTransLt,
      'in_message': instance.inMessage.toJson(),
      'out_messages': instance.outMessages.map((e) => e.toJson()).toList(),
    };

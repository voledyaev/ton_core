// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$_$_MessageFromJson(Map<String, dynamic> json) {
  return _$_Message(
    messageId: json['message_id'] as String,
    message: json['message'] as String,
    expire: json['expire'] as int?,
    address: json['address'] as String,
  );
}

Map<String, dynamic> _$_$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'message': instance.message,
      'expire': instance.expire,
      'address': instance.address,
    };

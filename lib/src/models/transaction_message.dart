import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_message.freezed.dart';
part 'transaction_message.g.dart';

@freezed
class TransactionMessage with _$TransactionMessage {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TransactionMessage({
    required String src,
    required String dst,
    @JsonKey(fromJson: TransactionMessage._valueFromJson) int? value,
    @JsonKey(fromJson: TransactionMessage._valueFromJson) int? fwdFee,
  }) = _TransactionMessage;

  factory TransactionMessage.fromJson(Map<String, dynamic> json) => _$TransactionMessageFromJson(json);

  static int? _valueFromJson(String? value) => value != null ? int.tryParse(value.substring(2), radix: 16) : null;
}

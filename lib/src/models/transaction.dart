import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'transaction_message.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory Transaction({
    required String id,
    @JsonKey(fromJson: Transaction._ltFromJson) int? lt,
    @JsonKey(fromJson: Transaction._prevTransLtFromJson) int? prevTransLt,
    required TransactionMessage inMessage,
    required List<TransactionMessage> outMessages,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

  static int? _ltFromJson(String? value) => value != null ? int.tryParse(value.substring(2), radix: 16) : null;

  static int? _prevTransLtFromJson(String? value) {
    final result = Transaction._ltFromJson(value);
    return result != 0 ? result : null;
  }
}

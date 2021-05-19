import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'submit_transaction_data.freezed.dart';
part 'submit_transaction_data.g.dart';

@freezed
class SubmitTransactionData with _$SubmitTransactionData {
  @JsonSerializable()
  const factory SubmitTransactionData({
    required String dest,
    required int value,
    required bool bounce,
    required bool allBalance,
    required String payload,
  }) = _SubmitTransactionData;

  factory SubmitTransactionData.fromJson(Map<String, dynamic> json) => _$SubmitTransactionDataFromJson(json);
}

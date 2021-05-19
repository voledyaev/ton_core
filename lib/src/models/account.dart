import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Account({
    required String accTypeName,
    @JsonKey(fromJson: Account._balanceFromJson) int? balance,
    int? lastPaid,
    @JsonKey(fromJson: Account._lastTransLtFromJson) int? lastTransLt,
    String? data,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);

  static int? _lastTransLtFromJson(String? value) => value != null ? int.tryParse(value.substring(2), radix: 16) : null;

  static int? _balanceFromJson(String? value) => value != null ? int.tryParse(value) : null;
}

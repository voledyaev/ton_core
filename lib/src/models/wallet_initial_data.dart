import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet_initial_data.freezed.dart';
part 'wallet_initial_data.g.dart';

@freezed
class WalletInitialData with _$WalletInitialData {
  @JsonSerializable()
  const factory WalletInitialData({
    @JsonKey(toJson: WalletInitialData._publicKeyToJson, name: 'owners') required List<String> ownersPublicKeys,
    required int reqConfirms,
  }) = _WalletInitialData;

  factory WalletInitialData.fromJson(Map<String, dynamic> json) => _$WalletInitialDataFromJson(json);

  static List<String> _publicKeyToJson(List<String> publicKeys) => publicKeys.map((e) => '0x$e').toList();
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'keypair.freezed.dart';
part 'keypair.g.dart';

@freezed
class KeyPair with _$KeyPair {
  @JsonSerializable()
  const factory KeyPair({
    required String public,
    required String secret,
  }) = _KeyPair;

  factory KeyPair.fromJson(Map<String, dynamic> json) => _$KeyPairFromJson(json);
}

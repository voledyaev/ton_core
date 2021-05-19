// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wallet_initial_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletInitialData _$WalletInitialDataFromJson(Map<String, dynamic> json) {
  return _WalletInitialData.fromJson(json);
}

/// @nodoc
class _$WalletInitialDataTearOff {
  const _$WalletInitialDataTearOff();

  _WalletInitialData call(
      {@JsonKey(toJson: WalletInitialData._publicKeyToJson, name: 'owners')
          required List<String> ownersPublicKeys,
      required int reqConfirms}) {
    return _WalletInitialData(
      ownersPublicKeys: ownersPublicKeys,
      reqConfirms: reqConfirms,
    );
  }

  WalletInitialData fromJson(Map<String, Object> json) {
    return WalletInitialData.fromJson(json);
  }
}

/// @nodoc
const $WalletInitialData = _$WalletInitialDataTearOff();

/// @nodoc
mixin _$WalletInitialData {
  @JsonKey(toJson: WalletInitialData._publicKeyToJson, name: 'owners')
  List<String> get ownersPublicKeys => throw _privateConstructorUsedError;
  int get reqConfirms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletInitialDataCopyWith<WalletInitialData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletInitialDataCopyWith<$Res> {
  factory $WalletInitialDataCopyWith(
          WalletInitialData value, $Res Function(WalletInitialData) then) =
      _$WalletInitialDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(toJson: WalletInitialData._publicKeyToJson, name: 'owners')
          List<String> ownersPublicKeys,
      int reqConfirms});
}

/// @nodoc
class _$WalletInitialDataCopyWithImpl<$Res>
    implements $WalletInitialDataCopyWith<$Res> {
  _$WalletInitialDataCopyWithImpl(this._value, this._then);

  final WalletInitialData _value;
  // ignore: unused_field
  final $Res Function(WalletInitialData) _then;

  @override
  $Res call({
    Object? ownersPublicKeys = freezed,
    Object? reqConfirms = freezed,
  }) {
    return _then(_value.copyWith(
      ownersPublicKeys: ownersPublicKeys == freezed
          ? _value.ownersPublicKeys
          : ownersPublicKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reqConfirms: reqConfirms == freezed
          ? _value.reqConfirms
          : reqConfirms // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WalletInitialDataCopyWith<$Res>
    implements $WalletInitialDataCopyWith<$Res> {
  factory _$WalletInitialDataCopyWith(
          _WalletInitialData value, $Res Function(_WalletInitialData) then) =
      __$WalletInitialDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(toJson: WalletInitialData._publicKeyToJson, name: 'owners')
          List<String> ownersPublicKeys,
      int reqConfirms});
}

/// @nodoc
class __$WalletInitialDataCopyWithImpl<$Res>
    extends _$WalletInitialDataCopyWithImpl<$Res>
    implements _$WalletInitialDataCopyWith<$Res> {
  __$WalletInitialDataCopyWithImpl(
      _WalletInitialData _value, $Res Function(_WalletInitialData) _then)
      : super(_value, (v) => _then(v as _WalletInitialData));

  @override
  _WalletInitialData get _value => super._value as _WalletInitialData;

  @override
  $Res call({
    Object? ownersPublicKeys = freezed,
    Object? reqConfirms = freezed,
  }) {
    return _then(_WalletInitialData(
      ownersPublicKeys: ownersPublicKeys == freezed
          ? _value.ownersPublicKeys
          : ownersPublicKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reqConfirms: reqConfirms == freezed
          ? _value.reqConfirms
          : reqConfirms // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_WalletInitialData implements _WalletInitialData {
  const _$_WalletInitialData(
      {@JsonKey(toJson: WalletInitialData._publicKeyToJson, name: 'owners')
          required this.ownersPublicKeys,
      required this.reqConfirms});

  factory _$_WalletInitialData.fromJson(Map<String, dynamic> json) =>
      _$_$_WalletInitialDataFromJson(json);

  @override
  @JsonKey(toJson: WalletInitialData._publicKeyToJson, name: 'owners')
  final List<String> ownersPublicKeys;
  @override
  final int reqConfirms;

  @override
  String toString() {
    return 'WalletInitialData(ownersPublicKeys: $ownersPublicKeys, reqConfirms: $reqConfirms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletInitialData &&
            (identical(other.ownersPublicKeys, ownersPublicKeys) ||
                const DeepCollectionEquality()
                    .equals(other.ownersPublicKeys, ownersPublicKeys)) &&
            (identical(other.reqConfirms, reqConfirms) ||
                const DeepCollectionEquality()
                    .equals(other.reqConfirms, reqConfirms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ownersPublicKeys) ^
      const DeepCollectionEquality().hash(reqConfirms);

  @JsonKey(ignore: true)
  @override
  _$WalletInitialDataCopyWith<_WalletInitialData> get copyWith =>
      __$WalletInitialDataCopyWithImpl<_WalletInitialData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WalletInitialDataToJson(this);
  }
}

abstract class _WalletInitialData implements WalletInitialData {
  const factory _WalletInitialData(
      {@JsonKey(toJson: WalletInitialData._publicKeyToJson, name: 'owners')
          required List<String> ownersPublicKeys,
      required int reqConfirms}) = _$_WalletInitialData;

  factory _WalletInitialData.fromJson(Map<String, dynamic> json) =
      _$_WalletInitialData.fromJson;

  @override
  @JsonKey(toJson: WalletInitialData._publicKeyToJson, name: 'owners')
  List<String> get ownersPublicKeys => throw _privateConstructorUsedError;
  @override
  int get reqConfirms => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletInitialDataCopyWith<_WalletInitialData> get copyWith =>
      throw _privateConstructorUsedError;
}

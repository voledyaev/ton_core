// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'submit_transaction_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubmitTransactionData _$SubmitTransactionDataFromJson(
    Map<String, dynamic> json) {
  return _SubmitTransactionData.fromJson(json);
}

/// @nodoc
class _$SubmitTransactionDataTearOff {
  const _$SubmitTransactionDataTearOff();

  _SubmitTransactionData call(
      {required String dest,
      required int value,
      required bool bounce,
      required bool allBalance,
      required String payload}) {
    return _SubmitTransactionData(
      dest: dest,
      value: value,
      bounce: bounce,
      allBalance: allBalance,
      payload: payload,
    );
  }

  SubmitTransactionData fromJson(Map<String, Object> json) {
    return SubmitTransactionData.fromJson(json);
  }
}

/// @nodoc
const $SubmitTransactionData = _$SubmitTransactionDataTearOff();

/// @nodoc
mixin _$SubmitTransactionData {
  String get dest => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  bool get bounce => throw _privateConstructorUsedError;
  bool get allBalance => throw _privateConstructorUsedError;
  String get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmitTransactionDataCopyWith<SubmitTransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitTransactionDataCopyWith<$Res> {
  factory $SubmitTransactionDataCopyWith(SubmitTransactionData value,
          $Res Function(SubmitTransactionData) then) =
      _$SubmitTransactionDataCopyWithImpl<$Res>;
  $Res call(
      {String dest, int value, bool bounce, bool allBalance, String payload});
}

/// @nodoc
class _$SubmitTransactionDataCopyWithImpl<$Res>
    implements $SubmitTransactionDataCopyWith<$Res> {
  _$SubmitTransactionDataCopyWithImpl(this._value, this._then);

  final SubmitTransactionData _value;
  // ignore: unused_field
  final $Res Function(SubmitTransactionData) _then;

  @override
  $Res call({
    Object? dest = freezed,
    Object? value = freezed,
    Object? bounce = freezed,
    Object? allBalance = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      dest: dest == freezed
          ? _value.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      bounce: bounce == freezed
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      allBalance: allBalance == freezed
          ? _value.allBalance
          : allBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SubmitTransactionDataCopyWith<$Res>
    implements $SubmitTransactionDataCopyWith<$Res> {
  factory _$SubmitTransactionDataCopyWith(_SubmitTransactionData value,
          $Res Function(_SubmitTransactionData) then) =
      __$SubmitTransactionDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dest, int value, bool bounce, bool allBalance, String payload});
}

/// @nodoc
class __$SubmitTransactionDataCopyWithImpl<$Res>
    extends _$SubmitTransactionDataCopyWithImpl<$Res>
    implements _$SubmitTransactionDataCopyWith<$Res> {
  __$SubmitTransactionDataCopyWithImpl(_SubmitTransactionData _value,
      $Res Function(_SubmitTransactionData) _then)
      : super(_value, (v) => _then(v as _SubmitTransactionData));

  @override
  _SubmitTransactionData get _value => super._value as _SubmitTransactionData;

  @override
  $Res call({
    Object? dest = freezed,
    Object? value = freezed,
    Object? bounce = freezed,
    Object? allBalance = freezed,
    Object? payload = freezed,
  }) {
    return _then(_SubmitTransactionData(
      dest: dest == freezed
          ? _value.dest
          : dest // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      bounce: bounce == freezed
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      allBalance: allBalance == freezed
          ? _value.allBalance
          : allBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_SubmitTransactionData implements _SubmitTransactionData {
  const _$_SubmitTransactionData(
      {required this.dest,
      required this.value,
      required this.bounce,
      required this.allBalance,
      required this.payload});

  factory _$_SubmitTransactionData.fromJson(Map<String, dynamic> json) =>
      _$_$_SubmitTransactionDataFromJson(json);

  @override
  final String dest;
  @override
  final int value;
  @override
  final bool bounce;
  @override
  final bool allBalance;
  @override
  final String payload;

  @override
  String toString() {
    return 'SubmitTransactionData(dest: $dest, value: $value, bounce: $bounce, allBalance: $allBalance, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubmitTransactionData &&
            (identical(other.dest, dest) ||
                const DeepCollectionEquality().equals(other.dest, dest)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.bounce, bounce) ||
                const DeepCollectionEquality().equals(other.bounce, bounce)) &&
            (identical(other.allBalance, allBalance) ||
                const DeepCollectionEquality()
                    .equals(other.allBalance, allBalance)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dest) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(bounce) ^
      const DeepCollectionEquality().hash(allBalance) ^
      const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$SubmitTransactionDataCopyWith<_SubmitTransactionData> get copyWith =>
      __$SubmitTransactionDataCopyWithImpl<_SubmitTransactionData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubmitTransactionDataToJson(this);
  }
}

abstract class _SubmitTransactionData implements SubmitTransactionData {
  const factory _SubmitTransactionData(
      {required String dest,
      required int value,
      required bool bounce,
      required bool allBalance,
      required String payload}) = _$_SubmitTransactionData;

  factory _SubmitTransactionData.fromJson(Map<String, dynamic> json) =
      _$_SubmitTransactionData.fromJson;

  @override
  String get dest => throw _privateConstructorUsedError;
  @override
  int get value => throw _privateConstructorUsedError;
  @override
  bool get bounce => throw _privateConstructorUsedError;
  @override
  bool get allBalance => throw _privateConstructorUsedError;
  @override
  String get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubmitTransactionDataCopyWith<_SubmitTransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

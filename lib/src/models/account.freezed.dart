// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
class _$AccountTearOff {
  const _$AccountTearOff();

  _Account call(
      {required String accTypeName,
      @JsonKey(fromJson: Account._balanceFromJson) int? balance,
      int? lastPaid,
      @JsonKey(fromJson: Account._lastTransLtFromJson) int? lastTransLt,
      String? data}) {
    return _Account(
      accTypeName: accTypeName,
      balance: balance,
      lastPaid: lastPaid,
      lastTransLt: lastTransLt,
      data: data,
    );
  }

  Account fromJson(Map<String, Object> json) {
    return Account.fromJson(json);
  }
}

/// @nodoc
const $Account = _$AccountTearOff();

/// @nodoc
mixin _$Account {
  String get accTypeName => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Account._balanceFromJson)
  int? get balance => throw _privateConstructorUsedError;
  int? get lastPaid => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Account._lastTransLtFromJson)
  int? get lastTransLt => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res>;
  $Res call(
      {String accTypeName,
      @JsonKey(fromJson: Account._balanceFromJson) int? balance,
      int? lastPaid,
      @JsonKey(fromJson: Account._lastTransLtFromJson) int? lastTransLt,
      String? data});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  final Account _value;
  // ignore: unused_field
  final $Res Function(Account) _then;

  @override
  $Res call({
    Object? accTypeName = freezed,
    Object? balance = freezed,
    Object? lastPaid = freezed,
    Object? lastTransLt = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      accTypeName: accTypeName == freezed
          ? _value.accTypeName
          : accTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPaid: lastPaid == freezed
          ? _value.lastPaid
          : lastPaid // ignore: cast_nullable_to_non_nullable
              as int?,
      lastTransLt: lastTransLt == freezed
          ? _value.lastTransLt
          : lastTransLt // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) then) =
      __$AccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {String accTypeName,
      @JsonKey(fromJson: Account._balanceFromJson) int? balance,
      int? lastPaid,
      @JsonKey(fromJson: Account._lastTransLtFromJson) int? lastTransLt,
      String? data});
}

/// @nodoc
class __$AccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(_Account _value, $Res Function(_Account) _then)
      : super(_value, (v) => _then(v as _Account));

  @override
  _Account get _value => super._value as _Account;

  @override
  $Res call({
    Object? accTypeName = freezed,
    Object? balance = freezed,
    Object? lastPaid = freezed,
    Object? lastTransLt = freezed,
    Object? data = freezed,
  }) {
    return _then(_Account(
      accTypeName: accTypeName == freezed
          ? _value.accTypeName
          : accTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPaid: lastPaid == freezed
          ? _value.lastPaid
          : lastPaid // ignore: cast_nullable_to_non_nullable
              as int?,
      lastTransLt: lastTransLt == freezed
          ? _value.lastTransLt
          : lastTransLt // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Account implements _Account {
  const _$_Account(
      {required this.accTypeName,
      @JsonKey(fromJson: Account._balanceFromJson) this.balance,
      this.lastPaid,
      @JsonKey(fromJson: Account._lastTransLtFromJson) this.lastTransLt,
      this.data});

  factory _$_Account.fromJson(Map<String, dynamic> json) =>
      _$_$_AccountFromJson(json);

  @override
  final String accTypeName;
  @override
  @JsonKey(fromJson: Account._balanceFromJson)
  final int? balance;
  @override
  final int? lastPaid;
  @override
  @JsonKey(fromJson: Account._lastTransLtFromJson)
  final int? lastTransLt;
  @override
  final String? data;

  @override
  String toString() {
    return 'Account(accTypeName: $accTypeName, balance: $balance, lastPaid: $lastPaid, lastTransLt: $lastTransLt, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Account &&
            (identical(other.accTypeName, accTypeName) ||
                const DeepCollectionEquality()
                    .equals(other.accTypeName, accTypeName)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.lastPaid, lastPaid) ||
                const DeepCollectionEquality()
                    .equals(other.lastPaid, lastPaid)) &&
            (identical(other.lastTransLt, lastTransLt) ||
                const DeepCollectionEquality()
                    .equals(other.lastTransLt, lastTransLt)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accTypeName) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(lastPaid) ^
      const DeepCollectionEquality().hash(lastTransLt) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$AccountCopyWith<_Account> get copyWith =>
      __$AccountCopyWithImpl<_Account>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccountToJson(this);
  }
}

abstract class _Account implements Account {
  const factory _Account(
      {required String accTypeName,
      @JsonKey(fromJson: Account._balanceFromJson) int? balance,
      int? lastPaid,
      @JsonKey(fromJson: Account._lastTransLtFromJson) int? lastTransLt,
      String? data}) = _$_Account;

  factory _Account.fromJson(Map<String, dynamic> json) = _$_Account.fromJson;

  @override
  String get accTypeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Account._balanceFromJson)
  int? get balance => throw _privateConstructorUsedError;
  @override
  int? get lastPaid => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Account._lastTransLtFromJson)
  int? get lastTransLt => throw _privateConstructorUsedError;
  @override
  String? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountCopyWith<_Account> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'keypair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeyPair _$KeyPairFromJson(Map<String, dynamic> json) {
  return _KeyPair.fromJson(json);
}

/// @nodoc
class _$KeyPairTearOff {
  const _$KeyPairTearOff();

  _KeyPair call({required String public, required String secret}) {
    return _KeyPair(
      public: public,
      secret: secret,
    );
  }

  KeyPair fromJson(Map<String, Object> json) {
    return KeyPair.fromJson(json);
  }
}

/// @nodoc
const $KeyPair = _$KeyPairTearOff();

/// @nodoc
mixin _$KeyPair {
  String get public => throw _privateConstructorUsedError;
  String get secret => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyPairCopyWith<KeyPair> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyPairCopyWith<$Res> {
  factory $KeyPairCopyWith(KeyPair value, $Res Function(KeyPair) then) =
      _$KeyPairCopyWithImpl<$Res>;
  $Res call({String public, String secret});
}

/// @nodoc
class _$KeyPairCopyWithImpl<$Res> implements $KeyPairCopyWith<$Res> {
  _$KeyPairCopyWithImpl(this._value, this._then);

  final KeyPair _value;
  // ignore: unused_field
  final $Res Function(KeyPair) _then;

  @override
  $Res call({
    Object? public = freezed,
    Object? secret = freezed,
  }) {
    return _then(_value.copyWith(
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as String,
      secret: secret == freezed
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$KeyPairCopyWith<$Res> implements $KeyPairCopyWith<$Res> {
  factory _$KeyPairCopyWith(_KeyPair value, $Res Function(_KeyPair) then) =
      __$KeyPairCopyWithImpl<$Res>;
  @override
  $Res call({String public, String secret});
}

/// @nodoc
class __$KeyPairCopyWithImpl<$Res> extends _$KeyPairCopyWithImpl<$Res>
    implements _$KeyPairCopyWith<$Res> {
  __$KeyPairCopyWithImpl(_KeyPair _value, $Res Function(_KeyPair) _then)
      : super(_value, (v) => _then(v as _KeyPair));

  @override
  _KeyPair get _value => super._value as _KeyPair;

  @override
  $Res call({
    Object? public = freezed,
    Object? secret = freezed,
  }) {
    return _then(_KeyPair(
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as String,
      secret: secret == freezed
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_KeyPair implements _KeyPair {
  const _$_KeyPair({required this.public, required this.secret});

  factory _$_KeyPair.fromJson(Map<String, dynamic> json) =>
      _$_$_KeyPairFromJson(json);

  @override
  final String public;
  @override
  final String secret;

  @override
  String toString() {
    return 'KeyPair(public: $public, secret: $secret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KeyPair &&
            (identical(other.public, public) ||
                const DeepCollectionEquality().equals(other.public, public)) &&
            (identical(other.secret, secret) ||
                const DeepCollectionEquality().equals(other.secret, secret)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(public) ^
      const DeepCollectionEquality().hash(secret);

  @JsonKey(ignore: true)
  @override
  _$KeyPairCopyWith<_KeyPair> get copyWith =>
      __$KeyPairCopyWithImpl<_KeyPair>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_KeyPairToJson(this);
  }
}

abstract class _KeyPair implements KeyPair {
  const factory _KeyPair({required String public, required String secret}) =
      _$_KeyPair;

  factory _KeyPair.fromJson(Map<String, dynamic> json) = _$_KeyPair.fromJson;

  @override
  String get public => throw _privateConstructorUsedError;
  @override
  String get secret => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$KeyPairCopyWith<_KeyPair> get copyWith =>
      throw _privateConstructorUsedError;
}

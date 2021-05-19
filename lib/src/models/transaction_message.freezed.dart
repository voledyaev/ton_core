// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionMessage _$TransactionMessageFromJson(Map<String, dynamic> json) {
  return _TransactionMessage.fromJson(json);
}

/// @nodoc
class _$TransactionMessageTearOff {
  const _$TransactionMessageTearOff();

  _TransactionMessage call(
      {required String src,
      required String dst,
      @JsonKey(fromJson: TransactionMessage._valueFromJson) int? value,
      @JsonKey(fromJson: TransactionMessage._valueFromJson) int? fwdFee}) {
    return _TransactionMessage(
      src: src,
      dst: dst,
      value: value,
      fwdFee: fwdFee,
    );
  }

  TransactionMessage fromJson(Map<String, Object> json) {
    return TransactionMessage.fromJson(json);
  }
}

/// @nodoc
const $TransactionMessage = _$TransactionMessageTearOff();

/// @nodoc
mixin _$TransactionMessage {
  String get src => throw _privateConstructorUsedError;
  String get dst => throw _privateConstructorUsedError;
  @JsonKey(fromJson: TransactionMessage._valueFromJson)
  int? get value => throw _privateConstructorUsedError;
  @JsonKey(fromJson: TransactionMessage._valueFromJson)
  int? get fwdFee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionMessageCopyWith<TransactionMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionMessageCopyWith<$Res> {
  factory $TransactionMessageCopyWith(
          TransactionMessage value, $Res Function(TransactionMessage) then) =
      _$TransactionMessageCopyWithImpl<$Res>;
  $Res call(
      {String src,
      String dst,
      @JsonKey(fromJson: TransactionMessage._valueFromJson) int? value,
      @JsonKey(fromJson: TransactionMessage._valueFromJson) int? fwdFee});
}

/// @nodoc
class _$TransactionMessageCopyWithImpl<$Res>
    implements $TransactionMessageCopyWith<$Res> {
  _$TransactionMessageCopyWithImpl(this._value, this._then);

  final TransactionMessage _value;
  // ignore: unused_field
  final $Res Function(TransactionMessage) _then;

  @override
  $Res call({
    Object? src = freezed,
    Object? dst = freezed,
    Object? value = freezed,
    Object? fwdFee = freezed,
  }) {
    return _then(_value.copyWith(
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      dst: dst == freezed
          ? _value.dst
          : dst // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      fwdFee: fwdFee == freezed
          ? _value.fwdFee
          : fwdFee // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TransactionMessageCopyWith<$Res>
    implements $TransactionMessageCopyWith<$Res> {
  factory _$TransactionMessageCopyWith(
          _TransactionMessage value, $Res Function(_TransactionMessage) then) =
      __$TransactionMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String src,
      String dst,
      @JsonKey(fromJson: TransactionMessage._valueFromJson) int? value,
      @JsonKey(fromJson: TransactionMessage._valueFromJson) int? fwdFee});
}

/// @nodoc
class __$TransactionMessageCopyWithImpl<$Res>
    extends _$TransactionMessageCopyWithImpl<$Res>
    implements _$TransactionMessageCopyWith<$Res> {
  __$TransactionMessageCopyWithImpl(
      _TransactionMessage _value, $Res Function(_TransactionMessage) _then)
      : super(_value, (v) => _then(v as _TransactionMessage));

  @override
  _TransactionMessage get _value => super._value as _TransactionMessage;

  @override
  $Res call({
    Object? src = freezed,
    Object? dst = freezed,
    Object? value = freezed,
    Object? fwdFee = freezed,
  }) {
    return _then(_TransactionMessage(
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      dst: dst == freezed
          ? _value.dst
          : dst // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      fwdFee: fwdFee == freezed
          ? _value.fwdFee
          : fwdFee // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_TransactionMessage implements _TransactionMessage {
  const _$_TransactionMessage(
      {required this.src,
      required this.dst,
      @JsonKey(fromJson: TransactionMessage._valueFromJson) this.value,
      @JsonKey(fromJson: TransactionMessage._valueFromJson) this.fwdFee});

  factory _$_TransactionMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionMessageFromJson(json);

  @override
  final String src;
  @override
  final String dst;
  @override
  @JsonKey(fromJson: TransactionMessage._valueFromJson)
  final int? value;
  @override
  @JsonKey(fromJson: TransactionMessage._valueFromJson)
  final int? fwdFee;

  @override
  String toString() {
    return 'TransactionMessage(src: $src, dst: $dst, value: $value, fwdFee: $fwdFee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionMessage &&
            (identical(other.src, src) ||
                const DeepCollectionEquality().equals(other.src, src)) &&
            (identical(other.dst, dst) ||
                const DeepCollectionEquality().equals(other.dst, dst)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.fwdFee, fwdFee) ||
                const DeepCollectionEquality().equals(other.fwdFee, fwdFee)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(src) ^
      const DeepCollectionEquality().hash(dst) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(fwdFee);

  @JsonKey(ignore: true)
  @override
  _$TransactionMessageCopyWith<_TransactionMessage> get copyWith =>
      __$TransactionMessageCopyWithImpl<_TransactionMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionMessageToJson(this);
  }
}

abstract class _TransactionMessage implements TransactionMessage {
  const factory _TransactionMessage(
          {required String src,
          required String dst,
          @JsonKey(fromJson: TransactionMessage._valueFromJson) int? value,
          @JsonKey(fromJson: TransactionMessage._valueFromJson) int? fwdFee}) =
      _$_TransactionMessage;

  factory _TransactionMessage.fromJson(Map<String, dynamic> json) =
      _$_TransactionMessage.fromJson;

  @override
  String get src => throw _privateConstructorUsedError;
  @override
  String get dst => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: TransactionMessage._valueFromJson)
  int? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: TransactionMessage._valueFromJson)
  int? get fwdFee => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionMessageCopyWith<_TransactionMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

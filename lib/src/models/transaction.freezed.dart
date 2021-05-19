// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(
      {required String id,
      @JsonKey(fromJson: Transaction._ltFromJson) int? lt,
      @JsonKey(fromJson: Transaction._prevTransLtFromJson) int? prevTransLt,
      required TransactionMessage inMessage,
      required List<TransactionMessage> outMessages}) {
    return _Transaction(
      id: id,
      lt: lt,
      prevTransLt: prevTransLt,
      inMessage: inMessage,
      outMessages: outMessages,
    );
  }

  Transaction fromJson(Map<String, Object> json) {
    return Transaction.fromJson(json);
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Transaction._ltFromJson)
  int? get lt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Transaction._prevTransLtFromJson)
  int? get prevTransLt => throw _privateConstructorUsedError;
  TransactionMessage get inMessage => throw _privateConstructorUsedError;
  List<TransactionMessage> get outMessages =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(fromJson: Transaction._ltFromJson) int? lt,
      @JsonKey(fromJson: Transaction._prevTransLtFromJson) int? prevTransLt,
      TransactionMessage inMessage,
      List<TransactionMessage> outMessages});

  $TransactionMessageCopyWith<$Res> get inMessage;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? lt = freezed,
    Object? prevTransLt = freezed,
    Object? inMessage = freezed,
    Object? outMessages = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lt: lt == freezed
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as int?,
      prevTransLt: prevTransLt == freezed
          ? _value.prevTransLt
          : prevTransLt // ignore: cast_nullable_to_non_nullable
              as int?,
      inMessage: inMessage == freezed
          ? _value.inMessage
          : inMessage // ignore: cast_nullable_to_non_nullable
              as TransactionMessage,
      outMessages: outMessages == freezed
          ? _value.outMessages
          : outMessages // ignore: cast_nullable_to_non_nullable
              as List<TransactionMessage>,
    ));
  }

  @override
  $TransactionMessageCopyWith<$Res> get inMessage {
    return $TransactionMessageCopyWith<$Res>(_value.inMessage, (value) {
      return _then(_value.copyWith(inMessage: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(fromJson: Transaction._ltFromJson) int? lt,
      @JsonKey(fromJson: Transaction._prevTransLtFromJson) int? prevTransLt,
      TransactionMessage inMessage,
      List<TransactionMessage> outMessages});

  @override
  $TransactionMessageCopyWith<$Res> get inMessage;
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object? id = freezed,
    Object? lt = freezed,
    Object? prevTransLt = freezed,
    Object? inMessage = freezed,
    Object? outMessages = freezed,
  }) {
    return _then(_Transaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lt: lt == freezed
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as int?,
      prevTransLt: prevTransLt == freezed
          ? _value.prevTransLt
          : prevTransLt // ignore: cast_nullable_to_non_nullable
              as int?,
      inMessage: inMessage == freezed
          ? _value.inMessage
          : inMessage // ignore: cast_nullable_to_non_nullable
              as TransactionMessage,
      outMessages: outMessages == freezed
          ? _value.outMessages
          : outMessages // ignore: cast_nullable_to_non_nullable
              as List<TransactionMessage>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Transaction implements _Transaction {
  const _$_Transaction(
      {required this.id,
      @JsonKey(fromJson: Transaction._ltFromJson) this.lt,
      @JsonKey(fromJson: Transaction._prevTransLtFromJson) this.prevTransLt,
      required this.inMessage,
      required this.outMessages});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(fromJson: Transaction._ltFromJson)
  final int? lt;
  @override
  @JsonKey(fromJson: Transaction._prevTransLtFromJson)
  final int? prevTransLt;
  @override
  final TransactionMessage inMessage;
  @override
  final List<TransactionMessage> outMessages;

  @override
  String toString() {
    return 'Transaction(id: $id, lt: $lt, prevTransLt: $prevTransLt, inMessage: $inMessage, outMessages: $outMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transaction &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lt, lt) ||
                const DeepCollectionEquality().equals(other.lt, lt)) &&
            (identical(other.prevTransLt, prevTransLt) ||
                const DeepCollectionEquality()
                    .equals(other.prevTransLt, prevTransLt)) &&
            (identical(other.inMessage, inMessage) ||
                const DeepCollectionEquality()
                    .equals(other.inMessage, inMessage)) &&
            (identical(other.outMessages, outMessages) ||
                const DeepCollectionEquality()
                    .equals(other.outMessages, outMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lt) ^
      const DeepCollectionEquality().hash(prevTransLt) ^
      const DeepCollectionEquality().hash(inMessage) ^
      const DeepCollectionEquality().hash(outMessages);

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionToJson(this);
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {required String id,
      @JsonKey(fromJson: Transaction._ltFromJson) int? lt,
      @JsonKey(fromJson: Transaction._prevTransLtFromJson) int? prevTransLt,
      required TransactionMessage inMessage,
      required List<TransactionMessage> outMessages}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Transaction._ltFromJson)
  int? get lt => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Transaction._prevTransLtFromJson)
  int? get prevTransLt => throw _privateConstructorUsedError;
  @override
  TransactionMessage get inMessage => throw _privateConstructorUsedError;
  @override
  List<TransactionMessage> get outMessages =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionCopyWith<_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

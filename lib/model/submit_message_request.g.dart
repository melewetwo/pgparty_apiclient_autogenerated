// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_message_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubmitMessageRequest> _$submitMessageRequestSerializer =
    new _$SubmitMessageRequestSerializer();

class _$SubmitMessageRequestSerializer
    implements StructuredSerializer<SubmitMessageRequest> {
  @override
  final Iterable<Type> types = const [
    SubmitMessageRequest,
    _$SubmitMessageRequest
  ];
  @override
  final String wireName = 'SubmitMessageRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SubmitMessageRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.encryptedMessages != null) {
      result
        ..add('encryptedMessages')
        ..add(serializers.serialize(object.encryptedMessages,
            specifiedType: const FullType(BuiltList,
                const [const FullType(SubmitEncryptedMessageRequest)])));
    }
    if (object.participateIdFrom != null) {
      result
        ..add('participateIdFrom')
        ..add(serializers.serialize(object.participateIdFrom,
            specifiedType: const FullType(int)));
    }
    if (object.timestamp != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(object.timestamp,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  SubmitMessageRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubmitMessageRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'encryptedMessages':
          result.encryptedMessages.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(SubmitEncryptedMessageRequest)
              ])) as BuiltList<Object>);
          break;
        case 'participateIdFrom':
          result.participateIdFrom = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SubmitMessageRequest extends SubmitMessageRequest {
  @override
  final BuiltList<SubmitEncryptedMessageRequest> encryptedMessages;
  @override
  final int participateIdFrom;
  @override
  final int timestamp;

  factory _$SubmitMessageRequest(
          [void Function(SubmitMessageRequestBuilder) updates]) =>
      (new SubmitMessageRequestBuilder()..update(updates)).build();

  _$SubmitMessageRequest._(
      {this.encryptedMessages, this.participateIdFrom, this.timestamp})
      : super._();

  @override
  SubmitMessageRequest rebuild(
          void Function(SubmitMessageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmitMessageRequestBuilder toBuilder() =>
      new SubmitMessageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmitMessageRequest &&
        encryptedMessages == other.encryptedMessages &&
        participateIdFrom == other.participateIdFrom &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, encryptedMessages.hashCode), participateIdFrom.hashCode),
        timestamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubmitMessageRequest')
          ..add('encryptedMessages', encryptedMessages)
          ..add('participateIdFrom', participateIdFrom)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class SubmitMessageRequestBuilder
    implements Builder<SubmitMessageRequest, SubmitMessageRequestBuilder> {
  _$SubmitMessageRequest _$v;

  ListBuilder<SubmitEncryptedMessageRequest> _encryptedMessages;
  ListBuilder<SubmitEncryptedMessageRequest> get encryptedMessages =>
      _$this._encryptedMessages ??=
          new ListBuilder<SubmitEncryptedMessageRequest>();
  set encryptedMessages(
          ListBuilder<SubmitEncryptedMessageRequest> encryptedMessages) =>
      _$this._encryptedMessages = encryptedMessages;

  int _participateIdFrom;
  int get participateIdFrom => _$this._participateIdFrom;
  set participateIdFrom(int participateIdFrom) =>
      _$this._participateIdFrom = participateIdFrom;

  int _timestamp;
  int get timestamp => _$this._timestamp;
  set timestamp(int timestamp) => _$this._timestamp = timestamp;

  SubmitMessageRequestBuilder();

  SubmitMessageRequestBuilder get _$this {
    if (_$v != null) {
      _encryptedMessages = _$v.encryptedMessages?.toBuilder();
      _participateIdFrom = _$v.participateIdFrom;
      _timestamp = _$v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubmitMessageRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubmitMessageRequest;
  }

  @override
  void update(void Function(SubmitMessageRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubmitMessageRequest build() {
    _$SubmitMessageRequest _$result;
    try {
      _$result = _$v ??
          new _$SubmitMessageRequest._(
              encryptedMessages: _encryptedMessages?.build(),
              participateIdFrom: participateIdFrom,
              timestamp: timestamp);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'encryptedMessages';
        _encryptedMessages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SubmitMessageRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MessageResponse> _$messageResponseSerializer =
    new _$MessageResponseSerializer();

class _$MessageResponseSerializer
    implements StructuredSerializer<MessageResponse> {
  @override
  final Iterable<Type> types = const [MessageResponse, _$MessageResponse];
  @override
  final String wireName = 'MessageResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, MessageResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.encryptedContent != null) {
      result
        ..add('encryptedContent')
        ..add(serializers.serialize(object.encryptedContent,
            specifiedType: const FullType(String)));
    }
    if (object.messageMetaId != null) {
      result
        ..add('messageMetaId')
        ..add(serializers.serialize(object.messageMetaId,
            specifiedType: const FullType(int)));
    }
    if (object.participantFrom != null) {
      result
        ..add('participantFrom')
        ..add(serializers.serialize(object.participantFrom,
            specifiedType: const FullType(ParticipantDto)));
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
  MessageResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessageResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'encryptedContent':
          result.encryptedContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'messageMetaId':
          result.messageMetaId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'participantFrom':
          result.participantFrom.replace(serializers.deserialize(value,
              specifiedType: const FullType(ParticipantDto)) as ParticipantDto);
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

class _$MessageResponse extends MessageResponse {
  @override
  final String encryptedContent;
  @override
  final int messageMetaId;
  @override
  final ParticipantDto participantFrom;
  @override
  final int timestamp;

  factory _$MessageResponse([void Function(MessageResponseBuilder) updates]) =>
      (new MessageResponseBuilder()..update(updates)).build();

  _$MessageResponse._(
      {this.encryptedContent,
      this.messageMetaId,
      this.participantFrom,
      this.timestamp})
      : super._();

  @override
  MessageResponse rebuild(void Function(MessageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageResponseBuilder toBuilder() =>
      new MessageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessageResponse &&
        encryptedContent == other.encryptedContent &&
        messageMetaId == other.messageMetaId &&
        participantFrom == other.participantFrom &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, encryptedContent.hashCode), messageMetaId.hashCode),
            participantFrom.hashCode),
        timestamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MessageResponse')
          ..add('encryptedContent', encryptedContent)
          ..add('messageMetaId', messageMetaId)
          ..add('participantFrom', participantFrom)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class MessageResponseBuilder
    implements Builder<MessageResponse, MessageResponseBuilder> {
  _$MessageResponse _$v;

  String _encryptedContent;
  String get encryptedContent => _$this._encryptedContent;
  set encryptedContent(String encryptedContent) =>
      _$this._encryptedContent = encryptedContent;

  int _messageMetaId;
  int get messageMetaId => _$this._messageMetaId;
  set messageMetaId(int messageMetaId) => _$this._messageMetaId = messageMetaId;

  ParticipantDtoBuilder _participantFrom;
  ParticipantDtoBuilder get participantFrom =>
      _$this._participantFrom ??= new ParticipantDtoBuilder();
  set participantFrom(ParticipantDtoBuilder participantFrom) =>
      _$this._participantFrom = participantFrom;

  int _timestamp;
  int get timestamp => _$this._timestamp;
  set timestamp(int timestamp) => _$this._timestamp = timestamp;

  MessageResponseBuilder();

  MessageResponseBuilder get _$this {
    if (_$v != null) {
      _encryptedContent = _$v.encryptedContent;
      _messageMetaId = _$v.messageMetaId;
      _participantFrom = _$v.participantFrom?.toBuilder();
      _timestamp = _$v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessageResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MessageResponse;
  }

  @override
  void update(void Function(MessageResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MessageResponse build() {
    _$MessageResponse _$result;
    try {
      _$result = _$v ??
          new _$MessageResponse._(
              encryptedContent: encryptedContent,
              messageMetaId: messageMetaId,
              participantFrom: _participantFrom?.build(),
              timestamp: timestamp);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'participantFrom';
        _participantFrom?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MessageResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

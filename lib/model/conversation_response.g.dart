// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConversationResponse> _$conversationResponseSerializer =
    new _$ConversationResponseSerializer();

class _$ConversationResponseSerializer
    implements StructuredSerializer<ConversationResponse> {
  @override
  final Iterable<Type> types = const [
    ConversationResponse,
    _$ConversationResponse
  ];
  @override
  final String wireName = 'ConversationResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ConversationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.conversationName != null) {
      result
        ..add('conversationName')
        ..add(serializers.serialize(object.conversationName,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.messages != null) {
      result
        ..add('messages')
        ..add(serializers.serialize(object.messages,
            specifiedType: const FullType(
                BuiltList, const [const FullType(MessageResponse)])));
    }
    if (object.participants != null) {
      result
        ..add('participants')
        ..add(serializers.serialize(object.participants,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ParticipantDto)])));
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
  ConversationResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConversationResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'conversationName':
          result.conversationName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'messages':
          result.messages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MessageResponse)]))
              as BuiltList<Object>);
          break;
        case 'participants':
          result.participants.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ParticipantDto)]))
              as BuiltList<Object>);
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

class _$ConversationResponse extends ConversationResponse {
  @override
  final String conversationName;
  @override
  final int id;
  @override
  final BuiltList<MessageResponse> messages;
  @override
  final BuiltList<ParticipantDto> participants;
  @override
  final int timestamp;

  factory _$ConversationResponse(
          [void Function(ConversationResponseBuilder) updates]) =>
      (new ConversationResponseBuilder()..update(updates)).build();

  _$ConversationResponse._(
      {this.conversationName,
      this.id,
      this.messages,
      this.participants,
      this.timestamp})
      : super._();

  @override
  ConversationResponse rebuild(
          void Function(ConversationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConversationResponseBuilder toBuilder() =>
      new ConversationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConversationResponse &&
        conversationName == other.conversationName &&
        id == other.id &&
        messages == other.messages &&
        participants == other.participants &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, conversationName.hashCode), id.hashCode),
                messages.hashCode),
            participants.hashCode),
        timestamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConversationResponse')
          ..add('conversationName', conversationName)
          ..add('id', id)
          ..add('messages', messages)
          ..add('participants', participants)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class ConversationResponseBuilder
    implements Builder<ConversationResponse, ConversationResponseBuilder> {
  _$ConversationResponse _$v;

  String _conversationName;
  String get conversationName => _$this._conversationName;
  set conversationName(String conversationName) =>
      _$this._conversationName = conversationName;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<MessageResponse> _messages;
  ListBuilder<MessageResponse> get messages =>
      _$this._messages ??= new ListBuilder<MessageResponse>();
  set messages(ListBuilder<MessageResponse> messages) =>
      _$this._messages = messages;

  ListBuilder<ParticipantDto> _participants;
  ListBuilder<ParticipantDto> get participants =>
      _$this._participants ??= new ListBuilder<ParticipantDto>();
  set participants(ListBuilder<ParticipantDto> participants) =>
      _$this._participants = participants;

  int _timestamp;
  int get timestamp => _$this._timestamp;
  set timestamp(int timestamp) => _$this._timestamp = timestamp;

  ConversationResponseBuilder();

  ConversationResponseBuilder get _$this {
    if (_$v != null) {
      _conversationName = _$v.conversationName;
      _id = _$v.id;
      _messages = _$v.messages?.toBuilder();
      _participants = _$v.participants?.toBuilder();
      _timestamp = _$v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConversationResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ConversationResponse;
  }

  @override
  void update(void Function(ConversationResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConversationResponse build() {
    _$ConversationResponse _$result;
    try {
      _$result = _$v ??
          new _$ConversationResponse._(
              conversationName: conversationName,
              id: id,
              messages: _messages?.build(),
              participants: _participants?.build(),
              timestamp: timestamp);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'messages';
        _messages?.build();
        _$failedField = 'participants';
        _participants?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ConversationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

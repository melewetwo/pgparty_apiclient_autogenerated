// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_conversation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateConversationRequest> _$createConversationRequestSerializer =
    new _$CreateConversationRequestSerializer();

class _$CreateConversationRequestSerializer
    implements StructuredSerializer<CreateConversationRequest> {
  @override
  final Iterable<Type> types = const [
    CreateConversationRequest,
    _$CreateConversationRequest
  ];
  @override
  final String wireName = 'CreateConversationRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CreateConversationRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.conversationName != null) {
      result
        ..add('conversationName')
        ..add(serializers.serialize(object.conversationName,
            specifiedType: const FullType(String)));
    }
    if (object.participants != null) {
      result
        ..add('participants')
        ..add(serializers.serialize(object.participants,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ParticipantDto)])));
    }
    return result;
  }

  @override
  CreateConversationRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateConversationRequestBuilder();

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
        case 'participants':
          result.participants.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ParticipantDto)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CreateConversationRequest extends CreateConversationRequest {
  @override
  final String conversationName;
  @override
  final BuiltList<ParticipantDto> participants;

  factory _$CreateConversationRequest(
          [void Function(CreateConversationRequestBuilder) updates]) =>
      (new CreateConversationRequestBuilder()..update(updates)).build();

  _$CreateConversationRequest._({this.conversationName, this.participants})
      : super._();

  @override
  CreateConversationRequest rebuild(
          void Function(CreateConversationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateConversationRequestBuilder toBuilder() =>
      new CreateConversationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateConversationRequest &&
        conversationName == other.conversationName &&
        participants == other.participants;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, conversationName.hashCode), participants.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateConversationRequest')
          ..add('conversationName', conversationName)
          ..add('participants', participants))
        .toString();
  }
}

class CreateConversationRequestBuilder
    implements
        Builder<CreateConversationRequest, CreateConversationRequestBuilder> {
  _$CreateConversationRequest _$v;

  String _conversationName;
  String get conversationName => _$this._conversationName;
  set conversationName(String conversationName) =>
      _$this._conversationName = conversationName;

  ListBuilder<ParticipantDto> _participants;
  ListBuilder<ParticipantDto> get participants =>
      _$this._participants ??= new ListBuilder<ParticipantDto>();
  set participants(ListBuilder<ParticipantDto> participants) =>
      _$this._participants = participants;

  CreateConversationRequestBuilder();

  CreateConversationRequestBuilder get _$this {
    if (_$v != null) {
      _conversationName = _$v.conversationName;
      _participants = _$v.participants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateConversationRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateConversationRequest;
  }

  @override
  void update(void Function(CreateConversationRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateConversationRequest build() {
    _$CreateConversationRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateConversationRequest._(
              conversationName: conversationName,
              participants: _participants?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'participants';
        _participants?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreateConversationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

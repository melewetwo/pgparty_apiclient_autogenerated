// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversations_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConversationsResponse> _$conversationsResponseSerializer =
    new _$ConversationsResponseSerializer();

class _$ConversationsResponseSerializer
    implements StructuredSerializer<ConversationsResponse> {
  @override
  final Iterable<Type> types = const [
    ConversationsResponse,
    _$ConversationsResponse
  ];
  @override
  final String wireName = 'ConversationsResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ConversationsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.conversationsResponse != null) {
      result
        ..add('conversationsResponse')
        ..add(serializers.serialize(object.conversationsResponse,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ConversationResponse)])));
    }
    return result;
  }

  @override
  ConversationsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConversationsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'conversationsResponse':
          result.conversationsResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ConversationResponse)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ConversationsResponse extends ConversationsResponse {
  @override
  final BuiltList<ConversationResponse> conversationsResponse;

  factory _$ConversationsResponse(
          [void Function(ConversationsResponseBuilder) updates]) =>
      (new ConversationsResponseBuilder()..update(updates)).build();

  _$ConversationsResponse._({this.conversationsResponse}) : super._();

  @override
  ConversationsResponse rebuild(
          void Function(ConversationsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConversationsResponseBuilder toBuilder() =>
      new ConversationsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConversationsResponse &&
        conversationsResponse == other.conversationsResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(0, conversationsResponse.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConversationsResponse')
          ..add('conversationsResponse', conversationsResponse))
        .toString();
  }
}

class ConversationsResponseBuilder
    implements Builder<ConversationsResponse, ConversationsResponseBuilder> {
  _$ConversationsResponse _$v;

  ListBuilder<ConversationResponse> _conversationsResponse;
  ListBuilder<ConversationResponse> get conversationsResponse =>
      _$this._conversationsResponse ??= new ListBuilder<ConversationResponse>();
  set conversationsResponse(
          ListBuilder<ConversationResponse> conversationsResponse) =>
      _$this._conversationsResponse = conversationsResponse;

  ConversationsResponseBuilder();

  ConversationsResponseBuilder get _$this {
    if (_$v != null) {
      _conversationsResponse = _$v.conversationsResponse?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConversationsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ConversationsResponse;
  }

  @override
  void update(void Function(ConversationsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConversationsResponse build() {
    _$ConversationsResponse _$result;
    try {
      _$result = _$v ??
          new _$ConversationsResponse._(
              conversationsResponse: _conversationsResponse?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'conversationsResponse';
        _conversationsResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ConversationsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

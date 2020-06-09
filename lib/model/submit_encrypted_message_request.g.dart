// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_encrypted_message_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubmitEncryptedMessageRequest>
    _$submitEncryptedMessageRequestSerializer =
    new _$SubmitEncryptedMessageRequestSerializer();

class _$SubmitEncryptedMessageRequestSerializer
    implements StructuredSerializer<SubmitEncryptedMessageRequest> {
  @override
  final Iterable<Type> types = const [
    SubmitEncryptedMessageRequest,
    _$SubmitEncryptedMessageRequest
  ];
  @override
  final String wireName = 'SubmitEncryptedMessageRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SubmitEncryptedMessageRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.encryptedContent != null) {
      result
        ..add('encryptedContent')
        ..add(serializers.serialize(object.encryptedContent,
            specifiedType: const FullType(String)));
    }
    if (object.forParticipantId != null) {
      result
        ..add('forParticipantId')
        ..add(serializers.serialize(object.forParticipantId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  SubmitEncryptedMessageRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubmitEncryptedMessageRequestBuilder();

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
        case 'forParticipantId':
          result.forParticipantId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SubmitEncryptedMessageRequest extends SubmitEncryptedMessageRequest {
  @override
  final String encryptedContent;
  @override
  final int forParticipantId;

  factory _$SubmitEncryptedMessageRequest(
          [void Function(SubmitEncryptedMessageRequestBuilder) updates]) =>
      (new SubmitEncryptedMessageRequestBuilder()..update(updates)).build();

  _$SubmitEncryptedMessageRequest._(
      {this.encryptedContent, this.forParticipantId})
      : super._();

  @override
  SubmitEncryptedMessageRequest rebuild(
          void Function(SubmitEncryptedMessageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmitEncryptedMessageRequestBuilder toBuilder() =>
      new SubmitEncryptedMessageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmitEncryptedMessageRequest &&
        encryptedContent == other.encryptedContent &&
        forParticipantId == other.forParticipantId;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, encryptedContent.hashCode), forParticipantId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubmitEncryptedMessageRequest')
          ..add('encryptedContent', encryptedContent)
          ..add('forParticipantId', forParticipantId))
        .toString();
  }
}

class SubmitEncryptedMessageRequestBuilder
    implements
        Builder<SubmitEncryptedMessageRequest,
            SubmitEncryptedMessageRequestBuilder> {
  _$SubmitEncryptedMessageRequest _$v;

  String _encryptedContent;
  String get encryptedContent => _$this._encryptedContent;
  set encryptedContent(String encryptedContent) =>
      _$this._encryptedContent = encryptedContent;

  int _forParticipantId;
  int get forParticipantId => _$this._forParticipantId;
  set forParticipantId(int forParticipantId) =>
      _$this._forParticipantId = forParticipantId;

  SubmitEncryptedMessageRequestBuilder();

  SubmitEncryptedMessageRequestBuilder get _$this {
    if (_$v != null) {
      _encryptedContent = _$v.encryptedContent;
      _forParticipantId = _$v.forParticipantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubmitEncryptedMessageRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubmitEncryptedMessageRequest;
  }

  @override
  void update(void Function(SubmitEncryptedMessageRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubmitEncryptedMessageRequest build() {
    final _$result = _$v ??
        new _$SubmitEncryptedMessageRequest._(
            encryptedContent: encryptedContent,
            forParticipantId: forParticipantId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

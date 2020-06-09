// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_participant_by_public_key_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchParticipantByPublicKeyRequest>
    _$searchParticipantByPublicKeyRequestSerializer =
    new _$SearchParticipantByPublicKeyRequestSerializer();

class _$SearchParticipantByPublicKeyRequestSerializer
    implements StructuredSerializer<SearchParticipantByPublicKeyRequest> {
  @override
  final Iterable<Type> types = const [
    SearchParticipantByPublicKeyRequest,
    _$SearchParticipantByPublicKeyRequest
  ];
  @override
  final String wireName = 'SearchParticipantByPublicKeyRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SearchParticipantByPublicKeyRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.publicKey != null) {
      result
        ..add('publicKey')
        ..add(serializers.serialize(object.publicKey,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SearchParticipantByPublicKeyRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchParticipantByPublicKeyRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'publicKey':
          result.publicKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchParticipantByPublicKeyRequest
    extends SearchParticipantByPublicKeyRequest {
  @override
  final String publicKey;

  factory _$SearchParticipantByPublicKeyRequest(
          [void Function(SearchParticipantByPublicKeyRequestBuilder)
              updates]) =>
      (new SearchParticipantByPublicKeyRequestBuilder()..update(updates))
          .build();

  _$SearchParticipantByPublicKeyRequest._({this.publicKey}) : super._();

  @override
  SearchParticipantByPublicKeyRequest rebuild(
          void Function(SearchParticipantByPublicKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchParticipantByPublicKeyRequestBuilder toBuilder() =>
      new SearchParticipantByPublicKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchParticipantByPublicKeyRequest &&
        publicKey == other.publicKey;
  }

  @override
  int get hashCode {
    return $jf($jc(0, publicKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchParticipantByPublicKeyRequest')
          ..add('publicKey', publicKey))
        .toString();
  }
}

class SearchParticipantByPublicKeyRequestBuilder
    implements
        Builder<SearchParticipantByPublicKeyRequest,
            SearchParticipantByPublicKeyRequestBuilder> {
  _$SearchParticipantByPublicKeyRequest _$v;

  String _publicKey;
  String get publicKey => _$this._publicKey;
  set publicKey(String publicKey) => _$this._publicKey = publicKey;

  SearchParticipantByPublicKeyRequestBuilder();

  SearchParticipantByPublicKeyRequestBuilder get _$this {
    if (_$v != null) {
      _publicKey = _$v.publicKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchParticipantByPublicKeyRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchParticipantByPublicKeyRequest;
  }

  @override
  void update(
      void Function(SearchParticipantByPublicKeyRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchParticipantByPublicKeyRequest build() {
    final _$result = _$v ??
        new _$SearchParticipantByPublicKeyRequest._(publicKey: publicKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

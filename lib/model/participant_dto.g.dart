// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParticipantDto> _$participantDtoSerializer =
    new _$ParticipantDtoSerializer();

class _$ParticipantDtoSerializer
    implements StructuredSerializer<ParticipantDto> {
  @override
  final Iterable<Type> types = const [ParticipantDto, _$ParticipantDto];
  @override
  final String wireName = 'ParticipantDto';

  @override
  Iterable<Object> serialize(Serializers serializers, ParticipantDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.publicKey != null) {
      result
        ..add('publicKey')
        ..add(serializers.serialize(object.publicKey,
            specifiedType: const FullType(String)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ParticipantDto deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParticipantDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'publicKey':
          result.publicKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ParticipantDto extends ParticipantDto {
  @override
  final int id;
  @override
  final String publicKey;
  @override
  final String username;

  factory _$ParticipantDto([void Function(ParticipantDtoBuilder) updates]) =>
      (new ParticipantDtoBuilder()..update(updates)).build();

  _$ParticipantDto._({this.id, this.publicKey, this.username}) : super._();

  @override
  ParticipantDto rebuild(void Function(ParticipantDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParticipantDtoBuilder toBuilder() =>
      new ParticipantDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParticipantDto &&
        id == other.id &&
        publicKey == other.publicKey &&
        username == other.username;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), publicKey.hashCode), username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParticipantDto')
          ..add('id', id)
          ..add('publicKey', publicKey)
          ..add('username', username))
        .toString();
  }
}

class ParticipantDtoBuilder
    implements Builder<ParticipantDto, ParticipantDtoBuilder> {
  _$ParticipantDto _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _publicKey;
  String get publicKey => _$this._publicKey;
  set publicKey(String publicKey) => _$this._publicKey = publicKey;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  ParticipantDtoBuilder();

  ParticipantDtoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _publicKey = _$v.publicKey;
      _username = _$v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParticipantDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ParticipantDto;
  }

  @override
  void update(void Function(ParticipantDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParticipantDto build() {
    final _$result = _$v ??
        new _$ParticipantDto._(
            id: id, publicKey: publicKey, username: username);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SignUpRequest> _$signUpRequestSerializer =
    new _$SignUpRequestSerializer();

class _$SignUpRequestSerializer implements StructuredSerializer<SignUpRequest> {
  @override
  final Iterable<Type> types = const [SignUpRequest, _$SignUpRequest];
  @override
  final String wireName = 'SignUpRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, SignUpRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.publicKey != null) {
      result
        ..add('publicKey')
        ..add(serializers.serialize(object.publicKey,
            specifiedType: const FullType(String)));
    }
    if (object.signedDate != null) {
      result
        ..add('signedDate')
        ..add(serializers.serialize(object.signedDate,
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
  SignUpRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignUpRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publicKey':
          result.publicKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'signedDate':
          result.signedDate = serializers.deserialize(value,
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

class _$SignUpRequest extends SignUpRequest {
  @override
  final String date;
  @override
  final String publicKey;
  @override
  final String signedDate;
  @override
  final String username;

  factory _$SignUpRequest([void Function(SignUpRequestBuilder) updates]) =>
      (new SignUpRequestBuilder()..update(updates)).build();

  _$SignUpRequest._({this.date, this.publicKey, this.signedDate, this.username})
      : super._();

  @override
  SignUpRequest rebuild(void Function(SignUpRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpRequestBuilder toBuilder() => new SignUpRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpRequest &&
        date == other.date &&
        publicKey == other.publicKey &&
        signedDate == other.signedDate &&
        username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, date.hashCode), publicKey.hashCode),
            signedDate.hashCode),
        username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignUpRequest')
          ..add('date', date)
          ..add('publicKey', publicKey)
          ..add('signedDate', signedDate)
          ..add('username', username))
        .toString();
  }
}

class SignUpRequestBuilder
    implements Builder<SignUpRequest, SignUpRequestBuilder> {
  _$SignUpRequest _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _publicKey;
  String get publicKey => _$this._publicKey;
  set publicKey(String publicKey) => _$this._publicKey = publicKey;

  String _signedDate;
  String get signedDate => _$this._signedDate;
  set signedDate(String signedDate) => _$this._signedDate = signedDate;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  SignUpRequestBuilder();

  SignUpRequestBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _publicKey = _$v.publicKey;
      _signedDate = _$v.signedDate;
      _username = _$v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignUpRequest;
  }

  @override
  void update(void Function(SignUpRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignUpRequest build() {
    final _$result = _$v ??
        new _$SignUpRequest._(
            date: date,
            publicKey: publicKey,
            signedDate: signedDate,
            username: username);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

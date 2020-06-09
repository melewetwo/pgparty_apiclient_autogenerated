        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_up_request.g.dart';

abstract class SignUpRequest implements Built<SignUpRequest, SignUpRequestBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'date')
    String get date;
    
        @nullable
    @BuiltValueField(wireName: r'publicKey')
    String get publicKey;
    
        @nullable
    @BuiltValueField(wireName: r'signedDate')
    String get signedDate;
    
        @nullable
    @BuiltValueField(wireName: r'username')
    String get username;

    // Boilerplate code needed to wire-up generated code
    SignUpRequest._();

    factory SignUpRequest([updates(SignUpRequestBuilder b)]) = _$SignUpRequest;
    static Serializer<SignUpRequest> get serializer => _$signUpRequestSerializer;

}


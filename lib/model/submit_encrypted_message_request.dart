        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'submit_encrypted_message_request.g.dart';

abstract class SubmitEncryptedMessageRequest implements Built<SubmitEncryptedMessageRequest, SubmitEncryptedMessageRequestBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'encryptedContent')
    String get encryptedContent;
    
        @nullable
    @BuiltValueField(wireName: r'forParticipantId')
    int get forParticipantId;

    // Boilerplate code needed to wire-up generated code
    SubmitEncryptedMessageRequest._();

    factory SubmitEncryptedMessageRequest([updates(SubmitEncryptedMessageRequestBuilder b)]) = _$SubmitEncryptedMessageRequest;
    static Serializer<SubmitEncryptedMessageRequest> get serializer => _$submitEncryptedMessageRequestSerializer;

}


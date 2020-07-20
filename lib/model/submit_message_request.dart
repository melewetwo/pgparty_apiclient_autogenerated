            import 'package:built_collection/built_collection.dart';
            import 'package:pgparty_apiclient/model/submit_encrypted_message_request.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'submit_message_request.g.dart';

abstract class SubmitMessageRequest implements Built<SubmitMessageRequest, SubmitMessageRequestBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'encryptedMessages')
    BuiltList<SubmitEncryptedMessageRequest> get encryptedMessages;
    
        @nullable
    @BuiltValueField(wireName: r'participateIdFrom')
    int get participateIdFrom;
    
        @nullable
    @BuiltValueField(wireName: r'timestamp')
    int get timestamp;

    // Boilerplate code needed to wire-up generated code
    SubmitMessageRequest._();

    factory SubmitMessageRequest([updates(SubmitMessageRequestBuilder b)]) = _$SubmitMessageRequest;
    static Serializer<SubmitMessageRequest> get serializer => _$submitMessageRequestSerializer;

}


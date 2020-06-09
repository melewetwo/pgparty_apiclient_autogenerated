            import 'package:pgparty_apiclient/model/participant_dto.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_response.g.dart';

abstract class MessageResponse implements Built<MessageResponse, MessageResponseBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'encryptedContent')
    String get encryptedContent;
    
        @nullable
    @BuiltValueField(wireName: r'messageMetaId')
    int get messageMetaId;
    
        @nullable
    @BuiltValueField(wireName: r'participantFrom')
    ParticipantDto get participantFrom;
    
        @nullable
    @BuiltValueField(wireName: r'timestamp')
    int get timestamp;

    // Boilerplate code needed to wire-up generated code
    MessageResponse._();

    factory MessageResponse([updates(MessageResponseBuilder b)]) = _$MessageResponse;
    static Serializer<MessageResponse> get serializer => _$messageResponseSerializer;

}


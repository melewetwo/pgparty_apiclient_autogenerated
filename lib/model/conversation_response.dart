            import 'package:pgparty_apiclient/model/message_response.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:pgparty_apiclient/model/participant_dto.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'conversation_response.g.dart';

abstract class ConversationResponse implements Built<ConversationResponse, ConversationResponseBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'conversationName')
    String get conversationName;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'messages')
    BuiltList<MessageResponse> get messages;
    
        @nullable
    @BuiltValueField(wireName: r'participants')
    BuiltList<ParticipantDto> get participants;
    
        @nullable
    @BuiltValueField(wireName: r'timestamp')
    int get timestamp;

    // Boilerplate code needed to wire-up generated code
    ConversationResponse._();

    factory ConversationResponse([updates(ConversationResponseBuilder b)]) = _$ConversationResponse;
    static Serializer<ConversationResponse> get serializer => _$conversationResponseSerializer;

}


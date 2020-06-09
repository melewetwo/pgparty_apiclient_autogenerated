            import 'package:built_collection/built_collection.dart';
            import 'package:pgparty_apiclient/model/participant_dto.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_conversation_request.g.dart';

abstract class CreateConversationRequest implements Built<CreateConversationRequest, CreateConversationRequestBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'conversationName')
    String get conversationName;
    
        @nullable
    @BuiltValueField(wireName: r'participants')
    BuiltList<ParticipantDto> get participants;

    // Boilerplate code needed to wire-up generated code
    CreateConversationRequest._();

    factory CreateConversationRequest([updates(CreateConversationRequestBuilder b)]) = _$CreateConversationRequest;
    static Serializer<CreateConversationRequest> get serializer => _$createConversationRequestSerializer;

}


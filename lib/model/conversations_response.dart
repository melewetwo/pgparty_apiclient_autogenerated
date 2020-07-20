            import 'package:built_collection/built_collection.dart';
            import 'package:pgparty_apiclient/model/conversation_response.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'conversations_response.g.dart';

abstract class ConversationsResponse implements Built<ConversationsResponse, ConversationsResponseBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'conversationsResponse')
    BuiltList<ConversationResponse> get conversationsResponse;

    // Boilerplate code needed to wire-up generated code
    ConversationsResponse._();

    factory ConversationsResponse([updates(ConversationsResponseBuilder b)]) = _$ConversationsResponse;
    static Serializer<ConversationsResponse> get serializer => _$conversationsResponseSerializer;

}


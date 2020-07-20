        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_participant_by_public_key_request.g.dart';

abstract class SearchParticipantByPublicKeyRequest implements Built<SearchParticipantByPublicKeyRequest, SearchParticipantByPublicKeyRequestBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'publicKey')
    String get publicKey;

    // Boilerplate code needed to wire-up generated code
    SearchParticipantByPublicKeyRequest._();

    factory SearchParticipantByPublicKeyRequest([updates(SearchParticipantByPublicKeyRequestBuilder b)]) = _$SearchParticipantByPublicKeyRequest;
    static Serializer<SearchParticipantByPublicKeyRequest> get serializer => _$searchParticipantByPublicKeyRequestSerializer;

}


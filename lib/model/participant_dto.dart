        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'participant_dto.g.dart';

abstract class ParticipantDto implements Built<ParticipantDto, ParticipantDtoBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'publicKey')
    String get publicKey;
    
        @nullable
    @BuiltValueField(wireName: r'username')
    String get username;

    // Boilerplate code needed to wire-up generated code
    ParticipantDto._();

    factory ParticipantDto([updates(ParticipantDtoBuilder b)]) = _$ParticipantDto;
    static Serializer<ParticipantDto> get serializer => _$participantDtoSerializer;

}


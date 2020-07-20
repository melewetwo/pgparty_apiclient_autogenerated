library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:pgparty_apiclient/model/conversation_response.dart';
import 'package:pgparty_apiclient/model/conversations_response.dart';
import 'package:pgparty_apiclient/model/create_conversation_request.dart';
import 'package:pgparty_apiclient/model/message_response.dart';
import 'package:pgparty_apiclient/model/participant_dto.dart';
import 'package:pgparty_apiclient/model/search_participant_by_public_key_request.dart';
import 'package:pgparty_apiclient/model/sign_up_request.dart';
import 'package:pgparty_apiclient/model/submit_encrypted_message_request.dart';
import 'package:pgparty_apiclient/model/submit_message_request.dart';


part 'serializers.g.dart';

@SerializersFor(const [
ConversationResponse,
ConversationsResponse,
CreateConversationRequest,
MessageResponse,
ParticipantDto,
SearchParticipantByPublicKeyRequest,
SignUpRequest,
SubmitEncryptedMessageRequest,
SubmitMessageRequest,

])

//allow all models to be serialized within a list
Serializers serializers = (_$serializers.toBuilder()
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ConversationResponse)]),
() => new ListBuilder<ConversationResponse>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ConversationsResponse)]),
() => new ListBuilder<ConversationsResponse>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CreateConversationRequest)]),
() => new ListBuilder<CreateConversationRequest>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(MessageResponse)]),
() => new ListBuilder<MessageResponse>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ParticipantDto)]),
() => new ListBuilder<ParticipantDto>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SearchParticipantByPublicKeyRequest)]),
() => new ListBuilder<SearchParticipantByPublicKeyRequest>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SignUpRequest)]),
() => new ListBuilder<SignUpRequest>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SubmitEncryptedMessageRequest)]),
() => new ListBuilder<SubmitEncryptedMessageRequest>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SubmitMessageRequest)]),
() => new ListBuilder<SubmitMessageRequest>())

..add(Iso8601DateTimeSerializer())
).build();

Serializers standardSerializers =
(serializers.toBuilder()
..addPlugin(StandardJsonPlugin())).build();

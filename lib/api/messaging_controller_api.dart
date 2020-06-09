import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:pgparty_apiclient/model/submit_message_request.dart';
import 'package:pgparty_apiclient/model/conversation_response.dart';
import 'package:pgparty_apiclient/model/participant_dto.dart';
import 'package:pgparty_apiclient/model/search_participant_by_public_key_request.dart';
import 'package:pgparty_apiclient/model/create_conversation_request.dart';
import 'package:pgparty_apiclient/model/conversations_response.dart';
import 'package:pgparty_apiclient/model/sign_up_request.dart';

class MessagingControllerApi {
    final Dio _dio;
    Serializers _serializers;

    MessagingControllerApi(this._dio, this._serializers);

        /// createConversation
        ///
        /// 
        Future<Response<ConversationResponse>>createConversationUsingPOST(CreateConversationRequest createConversationRequest,{ String auth,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/conversation";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                headerParams[r'auth'] = auth;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(createConversationRequest);
            var jsoncreateConversationRequest = json.encode(serializedBody);
            bodyData = jsoncreateConversationRequest;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(ConversationResponse);
        var data = _serializers.deserializeWith<ConversationResponse>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ConversationResponse>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// findParticipantByName
        ///
        /// 
        Future<Response<ParticipantDto>>findParticipantByNameUsingGET(String name,{ String auth,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/participant/by-name/{name}".replaceAll("{" r'name' "}", name.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                headerParams[r'auth'] = auth;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(ParticipantDto);
        var data = _serializers.deserializeWith<ParticipantDto>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ParticipantDto>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// findParticipantByPublicKey
        ///
        /// 
        Future<Response<ParticipantDto>>findParticipantByPublicKeyUsingPOST(SearchParticipantByPublicKeyRequest publicKey,{ String auth,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/participant/by-publicKey";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                headerParams[r'auth'] = auth;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(publicKey);
            var jsonpublicKey = json.encode(serializedBody);
            bodyData = jsonpublicKey;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(ParticipantDto);
        var data = _serializers.deserializeWith<ParticipantDto>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ParticipantDto>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// getAllMessages
        ///
        /// 
        Future<Response>getAllMessagesUsingGET({ String auth,int messagesSinceTimestamp,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/conversations";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                headerParams[r'auth'] = auth;
                queryParams[r'messagesSinceTimestamp'] = messagesSinceTimestamp;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// getMessages
        ///
        /// 
        Future<Response>getMessagesUsingGET(int conversationId,{ String auth,int messagesSinceTimestamp,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/conversation/{conversationId}/message".replaceAll("{" r'conversationId' "}", conversationId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                headerParams[r'auth'] = auth;
                queryParams[r'messagesSinceTimestamp'] = messagesSinceTimestamp;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// signUp
        ///
        /// 
        Future<Response<ParticipantDto>>signUpUsingPOST(SignUpRequest signUpRequest,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/sign-up";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(signUpRequest);
            var jsonsignUpRequest = json.encode(serializedBody);
            bodyData = jsonsignUpRequest;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(ParticipantDto);
        var data = _serializers.deserializeWith<ParticipantDto>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ParticipantDto>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// submitMessage
        ///
        /// 
        Future<Response>submitMessageUsingPOST(int conversationId,SubmitMessageRequest submitMessageRequest,{ String auth,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/conversation/{conversationId}/message".replaceAll("{" r'conversationId' "}", conversationId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                headerParams[r'auth'] = auth;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(submitMessageRequest);
            var jsonsubmitMessageRequest = json.encode(serializedBody);
            bodyData = jsonsubmitMessageRequest;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        }

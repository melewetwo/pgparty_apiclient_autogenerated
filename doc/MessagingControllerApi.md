# pgparty_apiclient.api.MessagingControllerApi

## Load the API package
```dart
import 'package:pgparty_apiclient/api.dart';
```

All URIs are relative to *http://http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConversationUsingPOST**](MessagingControllerApi.md#createConversationUsingPOST) | **post** /api/conversation | createConversation
[**findParticipantByNameUsingGET**](MessagingControllerApi.md#findParticipantByNameUsingGET) | **get** /api/participant/by-name/{name} | findParticipantByName
[**findParticipantByPublicKeyUsingPOST**](MessagingControllerApi.md#findParticipantByPublicKeyUsingPOST) | **post** /api/participant/by-publicKey | findParticipantByPublicKey
[**getAllMessagesUsingGET**](MessagingControllerApi.md#getAllMessagesUsingGET) | **get** /api/conversations | getAllMessages
[**getMessagesUsingGET**](MessagingControllerApi.md#getMessagesUsingGET) | **get** /api/conversation/{conversationId}/message | getMessages
[**signUpUsingPOST**](MessagingControllerApi.md#signUpUsingPOST) | **post** /api/sign-up | signUp
[**submitMessageUsingPOST**](MessagingControllerApi.md#submitMessageUsingPOST) | **post** /api/conversation/{conversationId}/message | submitMessage


# **createConversationUsingPOST**
> ConversationResponse createConversationUsingPOST(createConversationRequest, auth)

createConversation

### Example 
```dart
import 'package:pgparty_apiclient/api.dart';

var api_instance = new MessagingControllerApi();
var createConversationRequest = new CreateConversationRequest(); // CreateConversationRequest | createConversationRequest
var auth = auth_example; // String | auth

try { 
    var result = api_instance.createConversationUsingPOST(createConversationRequest, auth);
    print(result);
} catch (e) {
    print("Exception when calling MessagingControllerApi->createConversationUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConversationRequest** | [**CreateConversationRequest**](CreateConversationRequest.md)| createConversationRequest | 
 **auth** | **String**| auth | [optional] [default to null]

### Return type

[**ConversationResponse**](ConversationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findParticipantByNameUsingGET**
> ParticipantDto findParticipantByNameUsingGET(name, auth)

findParticipantByName

### Example 
```dart
import 'package:pgparty_apiclient/api.dart';

var api_instance = new MessagingControllerApi();
var name = name_example; // String | name
var auth = auth_example; // String | auth

try { 
    var result = api_instance.findParticipantByNameUsingGET(name, auth);
    print(result);
} catch (e) {
    print("Exception when calling MessagingControllerApi->findParticipantByNameUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name | [default to null]
 **auth** | **String**| auth | [optional] [default to null]

### Return type

[**ParticipantDto**](ParticipantDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findParticipantByPublicKeyUsingPOST**
> ParticipantDto findParticipantByPublicKeyUsingPOST(publicKey, auth)

findParticipantByPublicKey

### Example 
```dart
import 'package:pgparty_apiclient/api.dart';

var api_instance = new MessagingControllerApi();
var publicKey = new SearchParticipantByPublicKeyRequest(); // SearchParticipantByPublicKeyRequest | publicKey
var auth = auth_example; // String | auth

try { 
    var result = api_instance.findParticipantByPublicKeyUsingPOST(publicKey, auth);
    print(result);
} catch (e) {
    print("Exception when calling MessagingControllerApi->findParticipantByPublicKeyUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicKey** | [**SearchParticipantByPublicKeyRequest**](SearchParticipantByPublicKeyRequest.md)| publicKey | 
 **auth** | **String**| auth | [optional] [default to null]

### Return type

[**ParticipantDto**](ParticipantDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllMessagesUsingGET**
> getAllMessagesUsingGET(auth, messagesSinceTimestamp)

getAllMessages

### Example 
```dart
import 'package:pgparty_apiclient/api.dart';

var api_instance = new MessagingControllerApi();
var auth = auth_example; // String | auth
var messagesSinceTimestamp = 789; // int | messagesSinceTimestamp

try { 
    api_instance.getAllMessagesUsingGET(auth, messagesSinceTimestamp);
} catch (e) {
    print("Exception when calling MessagingControllerApi->getAllMessagesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth** | **String**| auth | [optional] [default to null]
 **messagesSinceTimestamp** | **int**| messagesSinceTimestamp | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessagesUsingGET**
> getMessagesUsingGET(conversationId, auth, messagesSinceTimestamp)

getMessages

### Example 
```dart
import 'package:pgparty_apiclient/api.dart';

var api_instance = new MessagingControllerApi();
var conversationId = 789; // int | conversationId
var auth = auth_example; // String | auth
var messagesSinceTimestamp = 789; // int | messagesSinceTimestamp

try { 
    api_instance.getMessagesUsingGET(conversationId, auth, messagesSinceTimestamp);
} catch (e) {
    print("Exception when calling MessagingControllerApi->getMessagesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **int**| conversationId | [default to null]
 **auth** | **String**| auth | [optional] [default to null]
 **messagesSinceTimestamp** | **int**| messagesSinceTimestamp | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signUpUsingPOST**
> ParticipantDto signUpUsingPOST(signUpRequest)

signUp

### Example 
```dart
import 'package:pgparty_apiclient/api.dart';

var api_instance = new MessagingControllerApi();
var signUpRequest = new SignUpRequest(); // SignUpRequest | signUpRequest

try { 
    var result = api_instance.signUpUsingPOST(signUpRequest);
    print(result);
} catch (e) {
    print("Exception when calling MessagingControllerApi->signUpUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signUpRequest** | [**SignUpRequest**](SignUpRequest.md)| signUpRequest | 

### Return type

[**ParticipantDto**](ParticipantDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitMessageUsingPOST**
> submitMessageUsingPOST(conversationId, submitMessageRequest, auth)

submitMessage

### Example 
```dart
import 'package:pgparty_apiclient/api.dart';

var api_instance = new MessagingControllerApi();
var conversationId = 789; // int | conversationId
var submitMessageRequest = new SubmitMessageRequest(); // SubmitMessageRequest | submitMessageRequest
var auth = auth_example; // String | auth

try { 
    api_instance.submitMessageUsingPOST(conversationId, submitMessageRequest, auth);
} catch (e) {
    print("Exception when calling MessagingControllerApi->submitMessageUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversationId** | **int**| conversationId | [default to null]
 **submitMessageRequest** | [**SubmitMessageRequest**](SubmitMessageRequest.md)| submitMessageRequest | 
 **auth** | **String**| auth | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


import 'dart:convert';
import 'dart:typed_data';
import '../cloud_functions/cloud_functions.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI Group Code

class OpenAIGroup {
  static ChatCall chatCall = ChatCall();
  static SpeechToTextCall speechToTextCall = SpeechToTextCall();
  static ImagesCall imagesCall = ImagesCall();
}

class ChatCall {
  Future<ApiCallResponse> call({
    String? prompt = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ChatCall',
        'variables': {
          'prompt': prompt,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? englishDesc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class SpeechToTextCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? prompt,
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'SpeechToTextCall',
        'variables': {
          'prompt': prompt,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class ImagesCall {
  Future<ApiCallResponse> call({
    String? prompt = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ImagesCall',
        'variables': {
          'prompt': prompt,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].url''',
      ));
}

/// End OpenAI Group Code

/// Start LeonardoAI Group Code

class LeonardoAIGroup {
  static String getBaseUrl() => 'https://cloud.leonardo.ai/api/rest/v1';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'content-type': 'application/json',
    'authorization': 'Bearer c0ce482a-eb16-44a5-b27e-898a3741cd42',
  };
  static GenerationImageCall generationImageCall = GenerationImageCall();
  static GenerationImagePhoenixCall generationImagePhoenixCall =
      GenerationImagePhoenixCall();
  static GetImageCall getImageCall = GetImageCall();
  static DeleteImageCall deleteImageCall = DeleteImageCall();
}

class GenerationImageCall {
  Future<ApiCallResponse> call({
    String? prompt = '',
    String? presetStyle = '',
  }) async {
    final baseUrl = LeonardoAIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "alchemy": true,
  "height": 512,
  "modelId": "b24e16ff-06e3-43eb-8d33-4416c2d75876",
  "num_images": 1,
  "presetStyle": "${presetStyle}",
  "prompt": "${prompt}",
  "width": 512,
  "highResolution": false,
  "highContrast": false,
  "photoReal": true,
  "promptMagic": true,
  "photoRealVersion": "v2",
  "public": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Generation image',
      apiUrl: '${baseUrl}/generations',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'authorization': 'Bearer c0ce482a-eb16-44a5-b27e-898a3741cd42',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? idImage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sdGenerationJob.generationId''',
      ));
}

class GenerationImagePhoenixCall {
  Future<ApiCallResponse> call({
    String? prompt = '',
    String? presetStyle = '',
  }) async {
    final baseUrl = LeonardoAIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "modelId": "6b645e3a-d64f-4341-a6d8-7a3690fbf042",
  "contrast": 3.5,
  "prompt": "${prompt}",
  "num_images": 1,
  "width": 512,
  "height": 512,
  "alchemy": true,
  "styleUUID": "${presetStyle}",
  "enhancePrompt": true,
  "public": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Generation image Phoenix',
      apiUrl: '${baseUrl}/generations',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'authorization': 'Bearer c0ce482a-eb16-44a5-b27e-898a3741cd42',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? idImage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sdGenerationJob.generationId''',
      ));
}

class GetImageCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = LeonardoAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get image',
      apiUrl: '${baseUrl}/generations/${id}',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'authorization': 'Bearer c0ce482a-eb16-44a5-b27e-898a3741cd42',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? imageURL(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.generations_by_pk.generated_images[:].url''',
      ));
}

class DeleteImageCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = LeonardoAIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete image',
      apiUrl: '${baseUrl}/generations/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'authorization': 'Bearer c0ce482a-eb16-44a5-b27e-898a3741cd42',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? imageURL(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.generations_by_pk.generated_images[:].url''',
      ));
}

/// End LeonardoAI Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

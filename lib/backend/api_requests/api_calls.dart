import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI Group Code

class OpenAIGroup {
  static String getBaseUrl() => 'https://api.openai.com/v1';
  static Map<String, String> headers = {};
  static ChatCall chatCall = ChatCall();
  static ImagesCall imagesCall = ImagesCall();
}

class ChatCall {
  Future<ApiCallResponse> call({
    String? prompt = '',
    String? key = '',
  }) async {
    final baseUrl = OpenAIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": [
    {
      "role": "user",
      "content": "${prompt}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'chat',
      apiUrl: '${baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${key}',
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

  String? englishDesc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class ImagesCall {
  Future<ApiCallResponse> call({
    String? prompt = '',
    String? key =
        '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',
  }) async {
    final baseUrl = OpenAIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": "dall-e-3",
  "prompt": "${prompt}",
  "n": 1,
  "size": "1024x1024"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Images',
      apiUrl: '${baseUrl}/images/generations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${key}',
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

  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].url''',
      ));
}

/// End OpenAI Group Code

class ProxycorsshCall {
  static Future<ApiCallResponse> call({
    String? aPIKey =
        'live_09262fe23311726eefc8c791484fc55122092579216ca22ad2fdfcd0217ac2c4',
    String? url =
        'https://oaidalleapiprodscus.blob.core.windows.net/private/org-eLR0e6nDs4NPyxmfdBUWegSO/user-wmwrBi6WsI0d30O2SMlwmlva/img-4jgvJUVry1tuCnYS3Fyn7cQr.png?st=2024-09-27T11%3A52%3A15Z&se=2024-09-27T13%3A52%3A15Z&sp=r&sv=2024-08-04&sr=b&rscd=inline&rsct=image/png&skoid=d505667d-d6c1-4a0a-bac7-5c84a87759f8&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2024-09-26T23%3A27%3A56Z&ske=2024-09-27T23%3A27%3A56Z&sks=b&skv=2024-08-04&sig=tDw4O/UEdLoWKqjOstwsuT1bQsSZ1PTocbLAMXSQ%2B%2Bk%3D',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'proxycorssh',
      apiUrl: 'https://proxy.cors.sh/${url}',
      callType: ApiCallType.GET,
      headers: {
        'x-cors-api-key': '${aPIKey},',
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
}

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

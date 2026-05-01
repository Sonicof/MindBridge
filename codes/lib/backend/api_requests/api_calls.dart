import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PdfgenerationCall {
  static Future<ApiCallResponse> call({
    String? childname = '',
    String? grade = '',
    String? dob = '',
    String? schoolname = '',
    String? curriculum = '',
    String? teachername = '',
    String? dos = '',
    String? color = '',
    String? recommendation = '',
    String? cid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'pdfgeneration',
      apiUrl: 'https://k3rra1.buildship.run/firestoretopdf',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'childname': childname,
        'grade': grade,
        'dob': dob,
        'schoolname': schoolname,
        'curriculum': curriculum,
        'teachername': teachername,
        'dos': dos,
        'color': color,
        'recommendation': recommendation,
        'cid': cid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PdfgenerationKannadaCall {
  static Future<ApiCallResponse> call({
    String? childname = '',
    String? grade = '',
    String? dob = '',
    String? schoolname = '',
    String? curriculum = '',
    String? teachername = '',
    String? dos = '',
    String? color = '',
    String? recommendation = '',
    String? cid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'pdfgeneration Kannada',
      apiUrl: 'https://k3rra1.buildship.run/firestoretopdfkannada',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'childname': childname,
        'grade': grade,
        'dob': dob,
        'schoolname': schoolname,
        'curriculum': curriculum,
        'teachername': teachername,
        'dos': dos,
        'color': color,
        'recommendation': recommendation,
        'cid': cid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TranscriptionCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "url": "https://firebasestorage.googleapis.com/v0/b/mindbridge-sld.firebasestorage.app/o/sample_rashi.wav?alt=media&token=79d7e6d1-afc3-4e2e-bff1-44900698b917"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'transcription',
      apiUrl: 'https://22f9-34-125-155-124.ngrok-free.app/transcribe_url/',
      callType: ApiCallType.POST,
      headers: {},
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
}

class DysgraphiaCall {
  static Future<ApiCallResponse> call({
    String? url = '',
  }) async {
    final ffApiRequestBody = '''
{
  "image_url": "${escapeStringForJson(url)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'dysgraphia',
      apiUrl: 'https://54a3-34-105-87-190.ngrok-free.app/predict',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
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

  static String? prediction(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.prediction''',
      ));
  static double? conf(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.confidence''',
      ));
  static dynamic sim(dynamic response) => getJsonField(
        response,
        r'''$.similarity''',
      );
  static String? war(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.warning''',
      ));
  static double? severity(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.severity_score''',
      ));
}

class GeminiFlashAPICall {
  static Future<ApiCallResponse> call({
    String? apiKey = '',
    dynamic messagesJson,
    String? systemMessage = '',
  }) async {
    final messages = _serializeJson(messagesJson);
    final ffApiRequestBody = '''
{
  "system_instruction": {
    "parts": {
      "text": "${escapeStringForJson(systemMessage)}"
    }
  },
  "contents": ${messages},
  "safetySettings": [
    {
      "category": "HARM_CATEGORY_DANGEROUS_CONTENT",
      "threshold": "BLOCK_ONLY_HIGH"
    }
  ],
  "generationConfig": {
    "stopSequences": [
      "Title"
    ],
    "temperature": 1,
    "maxOutputTokens": 800,
    "topP": 0.8,
    "topK": 10
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Gemini Flash API',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-flash-latest:streamGenerateContent?alt=sse&key=${apiKey}',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: true,
      alwaysAllowBody: false,
    );
  }

  static String? segment(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.candidates[:].content.parts[:].text''',
      ));
  static String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.candidates[:].content.role''',
      ));
}

class DyslexiaFourCall {
  static Future<ApiCallResponse> call({
    String? audioUrl = '',
    String? expectedText = '',
  }) async {
    final ffApiRequestBody = '''
{
  "audio": "${escapeStringForJson(audioUrl)}",
  "expected_text": "${escapeStringForJson(expectedText)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DyslexiaFour',
      apiUrl: 'https://4119-34-158-43-135.ngrok-free.app/analyze',
      callType: ApiCallType.POST,
      headers: {},
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

  static double? severityScore(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.severity_score''',
      ));
  static String? severityLevel(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.severity_level''',
      ));
  static List<String>? detailedAnalysis(dynamic response) => (getJsonField(
        response,
        r'''$.detailed_analysis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? diagnosis(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.diagnosis''',
      ));
  static List<String>? interpretation(dynamic response) => (getJsonField(
        response,
        r'''$.interpretation''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static dynamic results(dynamic response) => getJsonField(
        response,
        r'''$.results''',
      );
  static double? resultsWER(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.results.WER''',
      ));
}

class LlamaCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "model": "meta-llama/Llama-3.1-8B-Instruct",
  "messages": [
    {
      "role": "user",
      "content": "What is the capital of France?"
    }
  ],
  "temperature": 0.5,
  "max_tokens": 500,
  "top_p": 0.7,
  "stream": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'llama',
      apiUrl:
          'https://router.huggingface.co/hf-inference/models/meta-llama/Llama-3.1-8B-Instruct/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ****',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: true,
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}

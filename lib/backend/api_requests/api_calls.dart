import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';
import 'interceptors.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start 😸 Cheshire-Cat API Group Code

class CheshireCatAPIGroup {
  static String getBaseUrl({
    String? catUrl,
  }) {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    return catUrl;
  }

  static Map<String, String> headers = {};
  static HomeCall homeCall = HomeCall();
  static GetSettingsCall getSettingsCall = GetSettingsCall();
  static CreateSettingCall createSettingCall = CreateSettingCall();
  static GetSettingCall getSettingCall = GetSettingCall();
  static UpdateSettingCall updateSettingCall = UpdateSettingCall();
  static DeleteSettingCall deleteSettingCall = DeleteSettingCall();
  static GetLlmsSettingsCall getLlmsSettingsCall = GetLlmsSettingsCall();
  static GetLlmSettingsCall getLlmSettingsCall = GetLlmSettingsCall();
  static UpsertLlmSettingCall upsertLlmSettingCall = UpsertLlmSettingCall();
  static GetEmbeddersSettingsCall getEmbeddersSettingsCall =
      GetEmbeddersSettingsCall();
  static GetEmbedderSettingsCall getEmbedderSettingsCall =
      GetEmbedderSettingsCall();
  static UpsertEmbedderSettingCall upsertEmbedderSettingCall =
      UpsertEmbedderSettingCall();
  static GetAvailablePluginsCall getAvailablePluginsCall =
      GetAvailablePluginsCall();
  static InstallPluginCall installPluginCall = InstallPluginCall();
  static InstallPluginFromRegistryCall installPluginFromRegistryCall =
      InstallPluginFromRegistryCall();
  static TogglePluginCall togglePluginCall = TogglePluginCall();
  static GetPluginDetailsCall getPluginDetailsCall = GetPluginDetailsCall();
  static DeletePluginCall deletePluginCall = DeletePluginCall();
  static GetPluginsSettingsCall getPluginsSettingsCall =
      GetPluginsSettingsCall();
  static GetPluginSettingsCall getPluginSettingsCall = GetPluginSettingsCall();
  static UpsertPluginSettingsCall upsertPluginSettingsCall =
      UpsertPluginSettingsCall();
  static RecallMemoriesFromTextCall recallMemoriesFromTextCall =
      RecallMemoriesFromTextCall();
  static GetCollectionsCall getCollectionsCall = GetCollectionsCall();
  static WipeCollectionsCall wipeCollectionsCall = WipeCollectionsCall();
  static WipeSingleCollectionCall wipeSingleCollectionCall =
      WipeSingleCollectionCall();
  static WipeMemoryPointCall wipeMemoryPointCall = WipeMemoryPointCall();
  static WipeMemoryPointsByMetadataCall wipeMemoryPointsByMetadataCall =
      WipeMemoryPointsByMetadataCall();
  static GetConversationHistoryCall getConversationHistoryCall =
      GetConversationHistoryCall();
  static WipeConversationHistoryCall wipeConversationHistoryCall =
      WipeConversationHistoryCall();
  static UploadFileCall uploadFileCall = UploadFileCall();
  static UploadUrlCall uploadUrlCall = UploadUrlCall();
  static UploadMemoryCall uploadMemoryCall = UploadMemoryCall();
  static GetAllowedMimetypesCall getAllowedMimetypesCall =
      GetAllowedMimetypesCall();
}

class HomeCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'home',
      apiUrl: '$baseUrl/',
      callType: ApiCallType.GET,
      headers: {},
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

class GetSettingsCall {
  Future<ApiCallResponse> call({
    String? search = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get_settings',
      apiUrl: '$baseUrl/settings/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'search': search,
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

class CreateSettingCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    const ffApiRequestBody = '''
{
  "name": "",
  "value": "",
  "category": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create_setting',
      apiUrl: '$baseUrl/settings/',
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

class GetSettingCall {
  Future<ApiCallResponse> call({
    String? settingId = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get_setting',
      apiUrl: '$baseUrl/settings/$settingId',
      callType: ApiCallType.GET,
      headers: {},
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

class UpdateSettingCall {
  Future<ApiCallResponse> call({
    String? settingId = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    const ffApiRequestBody = '''
{
  "name": "",
  "value": "",
  "category": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update_setting',
      apiUrl: '$baseUrl/settings/$settingId',
      callType: ApiCallType.PUT,
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

class DeleteSettingCall {
  Future<ApiCallResponse> call({
    String? settingId = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'delete_setting',
      apiUrl: '$baseUrl/settings/$settingId',
      callType: ApiCallType.DELETE,
      headers: {},
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

class GetLlmsSettingsCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get_llms_settings',
      apiUrl: '$baseUrl/llm/settings/',
      callType: ApiCallType.GET,
      headers: {},
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

class GetLlmSettingsCall {
  Future<ApiCallResponse> call({
    String? languageModelName = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get_llm_settings',
      apiUrl: '$baseUrl/llm/settings/$languageModelName',
      callType: ApiCallType.GET,
      headers: {},
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

class UpsertLlmSettingCall {
  Future<ApiCallResponse> call({
    String? languageModelName = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    const ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'upsert_llm_setting',
      apiUrl: '$baseUrl/llm/settings/$languageModelName',
      callType: ApiCallType.PUT,
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

class GetEmbeddersSettingsCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get_embedders_settings',
      apiUrl: '$baseUrl/embedder/settings/',
      callType: ApiCallType.GET,
      headers: {},
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

class GetEmbedderSettingsCall {
  Future<ApiCallResponse> call({
    String? languageEmbedderName = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get_embedder_settings',
      apiUrl: '$baseUrl/embedder/settings/$languageEmbedderName',
      callType: ApiCallType.GET,
      headers: {},
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

class UpsertEmbedderSettingCall {
  Future<ApiCallResponse> call({
    String? languageEmbedderName = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    const ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'upsert_embedder_setting',
      apiUrl: '$baseUrl/embedder/settings/$languageEmbedderName',
      callType: ApiCallType.PUT,
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

class GetAvailablePluginsCall {
  Future<ApiCallResponse> call({
    String? query = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get_available_plugins',
      apiUrl: '$baseUrl/plugins/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'query': query,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? installed(dynamic response) => getJsonField(
        response,
        r'''$.installed''',
        true,
      ) as List?;
  List? registry(dynamic response) => getJsonField(
        response,
        r'''$.registry''',
        true,
      ) as List?;
}

class InstallPluginCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'install_plugin',
      apiUrl: '$baseUrl/plugins/upload/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InstallPluginFromRegistryCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    const ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'install_plugin_from_registry',
      apiUrl: '$baseUrl/plugins/upload/registry',
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

class TogglePluginCall {
  Future<ApiCallResponse> call({
    String? pluginId = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'toggle_plugin',
      apiUrl: '$baseUrl/plugins/toggle/$pluginId',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
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

class GetPluginDetailsCall {
  Future<ApiCallResponse> call({
    String? pluginId = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get_plugin_details',
      apiUrl: '$baseUrl/plugins/$pluginId',
      callType: ApiCallType.GET,
      headers: {},
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

class DeletePluginCall {
  Future<ApiCallResponse> call({
    String? pluginId = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'delete_plugin',
      apiUrl: '$baseUrl/plugins/$pluginId',
      callType: ApiCallType.DELETE,
      headers: {},
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

class GetPluginsSettingsCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get_plugins_settings',
      apiUrl: '$baseUrl/plugins/settings/',
      callType: ApiCallType.GET,
      headers: {},
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

class GetPluginSettingsCall {
  Future<ApiCallResponse> call({
    String? pluginId = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get_plugin_settings',
      apiUrl: '$baseUrl/plugins/settings/$pluginId',
      callType: ApiCallType.GET,
      headers: {},
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

class UpsertPluginSettingsCall {
  Future<ApiCallResponse> call({
    String? pluginId = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    const ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'upsert_plugin_settings',
      apiUrl: '$baseUrl/plugins/settings/$pluginId',
      callType: ApiCallType.PUT,
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

class RecallMemoriesFromTextCall {
  Future<ApiCallResponse> call({
    String? text = '',
    int? k,
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'recall_memories_from_text',
      apiUrl: '$baseUrl/memory/recall/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'text': text,
        'k': k,
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

class GetCollectionsCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get_collections',
      apiUrl: '$baseUrl/memory/collections/',
      callType: ApiCallType.GET,
      headers: {},
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

class WipeCollectionsCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'wipe_collections',
      apiUrl: '$baseUrl/memory/collections/',
      callType: ApiCallType.DELETE,
      headers: {},
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

class WipeSingleCollectionCall {
  Future<ApiCallResponse> call({
    String? collectionId = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'wipe_single_collection',
      apiUrl: '$baseUrl/memory/collections/$collectionId/',
      callType: ApiCallType.DELETE,
      headers: {},
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

class WipeMemoryPointCall {
  Future<ApiCallResponse> call({
    String? collectionId = '',
    String? memoryId = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'wipe_memory_point',
      apiUrl:
          '$baseUrl/memory/collections/$collectionId/points/$memoryId/',
      callType: ApiCallType.DELETE,
      headers: {},
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

class WipeMemoryPointsByMetadataCall {
  Future<ApiCallResponse> call({
    String? collectionId = '',
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'wipe_memory_points_by_metadata',
      apiUrl: '$baseUrl/memory/collections/$collectionId/points',
      callType: ApiCallType.DELETE,
      headers: {},
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

class GetConversationHistoryCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get_conversation_history',
      apiUrl: '$baseUrl/memory/conversation_history/',
      callType: ApiCallType.GET,
      headers: {},
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

class WipeConversationHistoryCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'wipe_conversation_history',
      apiUrl: '$baseUrl/memory/conversation_history/',
      callType: ApiCallType.DELETE,
      headers: {},
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

class UploadFileCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'upload_file',
      apiUrl: '$baseUrl/rabbithole/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadUrlCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    const ffApiRequestBody = '''
{
  "url": "",
  "chunk_size": 0,
  "chunk_overlap": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'upload_url',
      apiUrl: '$baseUrl/rabbithole/web/',
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

class UploadMemoryCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'upload_memory',
      apiUrl: '$baseUrl/rabbithole/memory/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllowedMimetypesCall {
  Future<ApiCallResponse> call({
    String? catUrl,
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';
    final baseUrl = CheshireCatAPIGroup.getBaseUrl(
      catUrl: catUrl,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get_allowed_mimetypes',
      apiUrl: '$baseUrl/rabbithole/allowed-mimetypes/',
      callType: ApiCallType.GET,
      headers: {},
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

/// End 😸 Cheshire-Cat API Group Code

class CatHomeCall {
  static Future<ApiCallResponse> call({
    String? catUrl,
    String? apiKey = '',
  }) async {
    catUrl ??= 'http://${FFDevEnvironmentValues().cat_address}';

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'cat home',
        apiUrl: catUrl,
        callType: ApiCallType.GET,
        headers: const {
          'Content-Type': 'application/json',
        },
        params: const {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      interceptors,
    );
  }

  static final interceptors = [
    AuthInterceptor(),
  ];

  static String? version(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.version''',
      ));
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

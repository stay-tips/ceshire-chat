import '/backend/api_requests/api_calls.dart';
import '/components/plugin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'plugins_widget.dart' show PluginsWidget;
import 'package:flutter/material.dart';

class PluginsModel extends FlutterFlowModel<PluginsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  bool apiRequestCompleted1 = false;
  String? apiRequestLastUniqueKey1;
  // Models for plugin dynamic component.
  late FlutterFlowDynamicModels<PluginModel> pluginModels1;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  // Models for plugin dynamic component.
  late FlutterFlowDynamicModels<PluginModel> pluginModels2;

  /// Query cache managers for this widget.

  final _pluginsCacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> pluginsCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _pluginsCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearPluginsCacheCache() => _pluginsCacheManager.clear();
  void clearPluginsCacheCacheKey(String? uniqueKey) =>
      _pluginsCacheManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    pluginModels1 = FlutterFlowDynamicModels(() => PluginModel());
    pluginModels2 = FlutterFlowDynamicModels(() => PluginModel());
  }

  @override
  void dispose() {
    pluginModels1.dispose();
    pluginModels2.dispose();

    /// Dispose query cache managers for this widget.

    clearPluginsCacheCache();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted1;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}

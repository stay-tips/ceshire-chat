import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/plugin_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'plugins_model.dart';
export 'plugins_model.dart';

class PluginsWidget extends StatefulWidget {
  const PluginsWidget({super.key});

  @override
  State<PluginsWidget> createState() => _PluginsWidgetState();
}

class _PluginsWidgetState extends State<PluginsWidget> {
  late PluginsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PluginsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).alternate,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Plugins',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SizedBox(
            width: double.infinity,
            height: 685.0,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
              child: PageView(
                controller: _model.pageViewController ??=
                    PageController(initialPage: 0),
                scrollDirection: Axis.horizontal,
                children: [
                  FutureBuilder<ApiCallResponse>(
                    future: _model
                        .pluginsCache(
                      uniqueQueryKey: FFAppConstants.userid,
                      requestFn: () =>
                          CheshireCatAPIGroup.getAvailablePluginsCall.call(
                        catUrl:
                            '${FFAppState().server.isSecure ? 'https://' : 'http://'}${FFAppState().server.address}',
                      ),
                    )
                        .then((result) {
                      try {
                        _model.apiRequestCompleted1 = true;
                        _model.apiRequestLastUniqueKey1 = FFAppConstants.userid;
                      } finally {}
                      return result;
                    }),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      final listViewGetAvailablePluginsResponse =
                          snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final installed = PluginsStruct.maybeFromMap(
                                      listViewGetAvailablePluginsResponse
                                          .jsonBody)
                                  ?.installed
                                  .toList() ??
                              [];

                          return RefreshIndicator(
                            onRefresh: () async {
                              safeSetState(() {
                                _model.clearPluginsCacheCacheKey(
                                    _model.apiRequestLastUniqueKey1);
                                _model.apiRequestCompleted1 = false;
                              });
                              await _model.waitForApiRequestCompleted1();
                            },
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: installed.length,
                              itemBuilder: (context, installedIndex) {
                                final installedItem = installed[installedIndex];
                                return wrapWithModel(
                                  model: _model.pluginModels1.getModel(
                                    installedItem.id,
                                    installedIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: PluginWidget(
                                    key: Key(
                                      'Keyjeq_${installedItem.id}',
                                    ),
                                    title: installedItem.name,
                                    author: installedItem.authorName,
                                    version: installedItem.version,
                                    description: installedItem.description,
                                    image: installedItem.thumb,
                                    thumb: getJsonField(
                                      installedItem.toMap(),
                                      r'''$.thumb''',
                                    ).toString(),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                  FutureBuilder<ApiCallResponse>(
                    future: (_model.apiRequestCompleter2 ??= Completer<
                            ApiCallResponse>()
                          ..complete(
                              CheshireCatAPIGroup.getAvailablePluginsCall.call(
                            catUrl:
                                '${FFAppState().server.isSecure ? 'https://' : 'http://'}${FFAppState().server.address}',
                          )))
                        .future,
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      final listViewGetAvailablePluginsResponse =
                          snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final installed = PluginsStruct.maybeFromMap(
                                      listViewGetAvailablePluginsResponse
                                          .jsonBody)
                                  ?.registry
                                  .toList() ??
                              [];

                          return RefreshIndicator(
                            onRefresh: () async {
                              safeSetState(
                                  () => _model.apiRequestCompleter2 = null);
                              await _model.waitForApiRequestCompleted2();
                            },
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: installed.length,
                              itemBuilder: (context, installedIndex) {
                                final installedItem = installed[installedIndex];
                                return wrapWithModel(
                                  model: _model.pluginModels2.getModel(
                                    installedItem.id,
                                    installedIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: PluginWidget(
                                    key: Key(
                                      'Keyx3x_${installedItem.id}',
                                    ),
                                    title: installedItem.name,
                                    author: installedItem.authorName,
                                    version: installedItem.version,
                                    description: installedItem.description,
                                    image: installedItem.thumb,
                                    thumb: getJsonField(
                                      installedItem.toMap(),
                                      r'''$.thumb''',
                                    ).toString(),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'chat_model.dart';
export 'chat_model.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  late ChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.initWebSocketConnection(
        'ws://ccat.local:1865/ws',
        'user',
      );
    });

    _model.userInputController ??= TextEditingController();
    _model.userInputFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
          child: FloatingActionButton(
            onPressed: () async {
              await actions.sendMessage(
                _model.userInputController.text,
              );
              setState(() {
                _model.userInputController?.clear();
              });
              await _model.listViewController?.animateTo(
                _model.listViewController!.position.maxScrollExtent,
                duration: const Duration(milliseconds: 100),
                curve: Curves.ease,
              );
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: Icon(
              Icons.send,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Cheshire Chat',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SizedBox(
            height: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: TextFormField(
                    controller: _model.userInputController,
                    focusNode: _model.userInputFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle: FlutterFlowTheme.of(context).labelMedium,
                      hintText: 'Tell me something....',
                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).labelMedium,
                    maxLines: null,
                    validator: _model.userInputControllerValidator
                        .asValidator(context),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.79,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Builder(
                      builder: (context) {
                        final message = FFAppState().messages.toList();
                        return ListView.separated(
                          padding: const EdgeInsets.fromLTRB(
                            0,
                            32.0,
                            0,
                            32.0,
                          ),
                          scrollDirection: Axis.vertical,
                          itemCount: message.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 12.0),
                          itemBuilder: (context, messageIndex) {
                            final messageItem = message[messageIndex];
                            return Text(
                              messageItem.message,
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            );
                          },
                          controller: _model.listViewController,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
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

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
              if (_model.formKey.currentState == null ||
                  !_model.formKey.currentState!.validate()) {
                return;
              }
              await actions.sendMessage(
                _model.textController.text,
                () async {},
                () async {
                  await _model.listViewController?.animateTo(
                    _model.listViewController!.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.ease,
                  );
                },
              );
              setState(() {});
              setState(() {
                _model.textController?.clear();
              });
              await Future.delayed(const Duration(milliseconds: 4000));
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
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Chat',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).alternate,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).primary,
                borderRadius: 22.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).accent1,
                icon: Icon(
                  Icons.settings,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pushNamed('settings');
                },
              ),
            ],
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: SizedBox(
              height: double.infinity,
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 74.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onFieldSubmitted: (_) async {
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            await actions.sendMessage(
                              _model.textController.text,
                              () async {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('ERROR'),
                                      content: const Text('need select URI'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('MY BAD'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              () async {
                                setState(() {});
                              },
                            );
                            setState(() {});
                          },
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Meaow....',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          maxLines: null,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.79,
                    decoration: const BoxDecoration(),
                    child: Builder(
                      builder: (context) {
                        final message = FFAppState().messages.toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: message.length,
                          itemBuilder: (context, messageIndex) {
                            final messageItem = message[messageIndex];
                            return Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                messageItem.content,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            );
                          },
                          controller: _model.listViewController,
                        );
                      },
                    ),
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

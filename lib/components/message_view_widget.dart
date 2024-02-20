import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'message_view_model.dart';
export 'message_view_model.dart';

class MessageViewWidget extends StatefulWidget {
  const MessageViewWidget({
    super.key,
    required this.message,
  });

  final MessageStruct? message;

  @override
  State<MessageViewWidget> createState() => _MessageViewWidgetState();
}

class _MessageViewWidgetState extends State<MessageViewWidget> {
  late MessageViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageViewModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) {
        if (widget.message?.authorName != 'user') {
          return Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.person,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.message?.authorName,
                      'chat',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    dateTimeFormat(
                        'relative',
                        dateTimeFromSecondsSinceEpoch(
                            getCurrentTimestamp.secondsSinceEpoch)),
                    style: const TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 8.0,
                    ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.message?.message,
                      '""',
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
            ].divide(const SizedBox(width: 8.0)),
          );
        } else {
          return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FaIcon(
                    FontAwesomeIcons.robot,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.message?.authorName,
                      'bot',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    dateTimeFormat(
                        'relative',
                        dateTimeFromSecondsSinceEpoch(
                            getCurrentTimestamp.secondsSinceEpoch)),
                    style: const TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 8.0,
                    ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.message?.message,
                      '""',
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
            ].divide(const SizedBox(width: 8.0)),
          );
        }
      },
    );
  }
}

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
    String? text,
    required this.user,
  }) : text = text ?? '""';

  final String text;
  final String? user;

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
        if (widget.user != 'user') {
          return Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.person,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  Text(
                    widget.text,
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ].divide(const SizedBox(width: 4.0)),
              ),
              Wrap(
                spacing: 0.0,
                runSpacing: 0.0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
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
                ],
              ),
            ],
          );
        } else {
          return Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Wrap(
                    spacing: 0.0,
                    runSpacing: 0.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Text(
                        widget.text,
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                    ],
                  ),
                  FaIcon(
                    FontAwesomeIcons.robot,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ].divide(const SizedBox(width: 4.0)),
              ),
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
            ],
          );
        }
      },
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'setting_item_model.dart';
export 'setting_item_model.dart';

class SettingItemWidget extends StatefulWidget {
  const SettingItemWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.iconAction,
  });

  final Widget? icon;
  final String? title;
  final Future Function()? iconAction;

  @override
  State<SettingItemWidget> createState() => _SettingItemWidgetState();
}

class _SettingItemWidgetState extends State<SettingItemWidget> {
  late SettingItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 5.0,
              color: Color(0x3416202A),
              offset: Offset(
                0.0,
                2.0,
              ),
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.computer,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Cheshire Server',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.9, 0.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

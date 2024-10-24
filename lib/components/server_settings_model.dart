import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'server_settings_widget.dart' show ServerSettingsWidget;
import 'package:flutter/material.dart';

class ServerSettingsModel extends FlutterFlowModel<ServerSettingsWidget> {
  ///  Local state fields for this component.

  bool urlValid = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for api_key widget.
  FocusNode? apiKeyFocusNode;
  TextEditingController? apiKeyTextController;
  String? Function(BuildContext, String?)? apiKeyTextControllerValidator;
  // Stores action output result for [Backend Call - API (cat home)] action in Button widget.
  ApiCallResponse? beResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    apiKeyFocusNode?.dispose();
    apiKeyTextController?.dispose();
  }
}

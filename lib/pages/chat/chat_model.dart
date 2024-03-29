import '/flutter_flow/flutter_flow_util.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for user_input widget.
  FocusNode? userInputFocusNode;
  TextEditingController? userInputController;
  String? Function(BuildContext, String?)? userInputControllerValidator;
  // State field(s) for ListView widget.
  ScrollController? listViewController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    userInputFocusNode?.dispose();
    userInputController?.dispose();

    listViewController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

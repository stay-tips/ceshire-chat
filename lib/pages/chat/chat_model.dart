import '/flutter_flow/flutter_flow_util.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ui_messaes widget.
  ScrollController? uiMessaes;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    uiMessaes = ScrollController();
  }

  @override
  void dispose() {
    uiMessaes?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

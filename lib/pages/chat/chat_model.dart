import '/flutter_flow/flutter_flow_util.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  Local state fields for this page.

  bool isDrawerEditing = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ListView widget.
  ScrollController? listViewController;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    listViewController?.dispose();
  }
}

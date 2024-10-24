import '/flutter_flow/flutter_flow_util.dart';
import 'uopload_media_widget.dart' show UoploadMediaWidget;
import 'package:flutter/material.dart';

class UoploadMediaModel extends FlutterFlowModel<UoploadMediaWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

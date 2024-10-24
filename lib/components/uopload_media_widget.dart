import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'uopload_media_model.dart';
export 'uopload_media_model.dart';

class UoploadMediaWidget extends StatefulWidget {
  const UoploadMediaWidget({super.key});

  @override
  State<UoploadMediaWidget> createState() => _UoploadMediaWidgetState();
}

class _UoploadMediaWidgetState extends State<UoploadMediaWidget> {
  late UoploadMediaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UoploadMediaModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
      child: GestureDetector(
        onVerticalDragEnd: (details) async {
          final selectedMedia = await selectMediaWithSourceBottomSheet(
            context: context,
            allowPhoto: true,
          );
          if (selectedMedia != null &&
              selectedMedia
                  .every((m) => validateFileFormat(m.storagePath, context))) {
            safeSetState(() => _model.isDataUploading1 = true);
            var selectedUploadedFiles = <FFUploadedFile>[];

            try {
              showUploadMessage(
                context,
                'Uploading file...',
                showLoading: true,
              );
              selectedUploadedFiles = selectedMedia
                  .map((m) => FFUploadedFile(
                        name: m.storagePath.split('/').last,
                        bytes: m.bytes,
                        height: m.dimensions?.height,
                        width: m.dimensions?.width,
                        blurHash: m.blurHash,
                      ))
                  .toList();
            } finally {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              _model.isDataUploading1 = false;
            }
            if (selectedUploadedFiles.length == selectedMedia.length) {
              safeSetState(() {
                _model.uploadedLocalFile1 = selectedUploadedFiles.first;
              });
              showUploadMessage(context, 'Success!');
            } else {
              safeSetState(() {});
              showUploadMessage(context, 'Failed to upload data');
              return;
            }
          }
        },
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.9,
          constraints: const BoxConstraints(
            maxWidth: 2000.0,
            maxHeight: 2000.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.cloud_upload,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 48.0,
                ),
                Text(
                  'Upload Files',
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Outfit',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'Drag and drop files here or click to select',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    final selectedMedia =
                        await selectMediaWithSourceBottomSheet(
                      context: context,
                      allowPhoto: true,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      safeSetState(() => _model.isDataUploading2 = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];

                      try {
                        showUploadMessage(
                          context,
                          'Uploading file...',
                          showLoading: true,
                        );
                        selectedUploadedFiles = selectedMedia
                            .map((m) => FFUploadedFile(
                                  name: m.storagePath.split('/').last,
                                  bytes: m.bytes,
                                  height: m.dimensions?.height,
                                  width: m.dimensions?.width,
                                  blurHash: m.blurHash,
                                ))
                            .toList();
                      } finally {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        _model.isDataUploading2 = false;
                      }
                      if (selectedUploadedFiles.length ==
                          selectedMedia.length) {
                        safeSetState(() {
                          _model.uploadedLocalFile2 =
                              selectedUploadedFiles.first;
                        });
                        showUploadMessage(context, 'Success!');
                      } else {
                        safeSetState(() {});
                        showUploadMessage(context, 'Failed to upload data');
                        return;
                      }
                    }

                    safeSetState(() {});
                  },
                  text: 'Select Files',
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 50.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).info,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                Text(
                  'Supported formats: JPG, PNG',
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(const SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dysgraphia_assessment_widget.dart' show DysgraphiaAssessmentWidget;
import 'package:flutter/material.dart';

class DysgraphiaAssessmentModel
    extends FlutterFlowModel<DysgraphiaAssessmentWidget> {
  ///  Local state fields for this page.

  bool flag = false;

  bool flag2 = false;

  bool flag3 = false;

  bool flag1 = true;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataV1b = false;
  FFUploadedFile uploadedLocalFile_uploadDataV1b =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataV1b = '';

  // Stores action output result for [Backend Call - API (dysgraphia)] action in Button widget.
  ApiCallResponse? dysgraphia;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dyslexia_assessment_widget.dart' show DyslexiaAssessmentWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class DyslexiaAssessmentModel
    extends FlutterFlowModel<DyslexiaAssessmentWidget> {
  ///  Local state fields for this page.

  bool flag = true;

  bool flag2 = false;

  bool flag3 = false;

  bool flag1 = true;

  ///  State fields for stateful widgets in this page.

  AudioRecorder? audioRecorder;
  String? dyslexiaAudio;
  FFUploadedFile recordedFileBytes1 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String? dyslexiaAudio1;
  FFUploadedFile recordedFileBytes2 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  bool isDataUploading_uploadData2c3 = false;
  FFUploadedFile uploadedLocalFile_uploadData2c3 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData2c3 = '';

  // Stores action output result for [Backend Call - API (DyslexiaFour)] action in Button widget.
  ApiCallResponse? dyslexia4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

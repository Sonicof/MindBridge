import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'feedback_widget.dart' show FeedbackWidget;
import 'package:flutter/material.dart';

class FeedbackModel extends FlutterFlowModel<FeedbackWidget> {
  ///  Local state fields for this page.

  int q1 = 0;

  int q2 = 0;

  int q3 = 0;

  int q4 = 0;

  int q5 = 0;

  int q6 = 0;

  int q7 = 0;

  int q8 = 0;

  int q9 = 0;

  int q10 = 0;

  int q11 = 0;

  int q12 = 0;

  double objmean = 0.0;

  double subjmean = 0.0;

  double secAengagement = 0.0;

  double secBfunctionality = 0.0;

  double secCaesthetics = 0.0;

  double secDinformation = 0.0;

  double secErating = 0.0;

  bool flag = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController3;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController4;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController5;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController6;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController7;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController8;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController9;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController10;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController11;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
  String? get radioButtonValue3 => radioButtonValueController3?.value;
  String? get radioButtonValue4 => radioButtonValueController4?.value;
  String? get radioButtonValue5 => radioButtonValueController5?.value;
  String? get radioButtonValue6 => radioButtonValueController6?.value;
  String? get radioButtonValue7 => radioButtonValueController7?.value;
  String? get radioButtonValue8 => radioButtonValueController8?.value;
  String? get radioButtonValue9 => radioButtonValueController9?.value;
  String? get radioButtonValue10 => radioButtonValueController10?.value;
  String? get radioButtonValue11 => radioButtonValueController11?.value;
}

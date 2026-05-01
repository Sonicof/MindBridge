import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'section4_widget.dart' show Section4Widget;
import 'package:flutter/material.dart';

class Section4Model extends FlutterFlowModel<Section4Widget> {
  ///  Local state fields for this page.

  int q11 = 0;

  int q12 = 0;

  int q13 = 0;

  int q14 = 0;

  int q15 = 0;

  int q21 = 0;

  int q22 = 0;

  int q23 = 0;

  int q24 = 0;

  int q25 = 0;

  int q31 = 0;

  int q32 = 0;

  int q33 = 0;

  int q34 = 0;

  int q35 = 0;

  int q41 = 0;

  int q42 = 0;

  int q43 = 0;

  int q44 = 0;

  int q45 = 0;

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

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
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController12;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController13;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController14;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController15;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController16;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController17;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController18;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController19;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController20;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }

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
  String? get radioButtonValue12 => radioButtonValueController12?.value;
  String? get radioButtonValue13 => radioButtonValueController13?.value;
  String? get radioButtonValue14 => radioButtonValueController14?.value;
  String? get radioButtonValue15 => radioButtonValueController15?.value;
  String? get radioButtonValue16 => radioButtonValueController16?.value;
  String? get radioButtonValue17 => radioButtonValueController17?.value;
  String? get radioButtonValue18 => radioButtonValueController18?.value;
  String? get radioButtonValue19 => radioButtonValueController19?.value;
  String? get radioButtonValue20 => radioButtonValueController20?.value;
}

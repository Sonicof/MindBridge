import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/sections/teminate/teminate_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'section2_model.dart';
export 'section2_model.dart';

class Section2Widget extends StatefulWidget {
  const Section2Widget({
    super.key,
    required this.childid,
    required this.grade,
  });

  final String? childid;
  final String? grade;

  static String routeName = 'Section_2';
  static String routePath = '/section2';

  @override
  State<Section2Widget> createState() => _Section2WidgetState();
}

class _Section2WidgetState extends State<Section2Widget> {
  late Section2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Section2Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ChildDataRecord>>(
      stream: queryChildDataRecord(
        queryBuilder: (childDataRecord) => childDataRecord.where(
          'cid',
          isEqualTo: widget.childid,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ChildDataRecord> section2ChildDataRecordList = snapshot.data!;
        final section2ChildDataRecord = section2ChildDataRecordList.isNotEmpty
            ? section2ChildDataRecordList.first
            : null;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: PopScope(
            canPop: false,
            child: Scaffold(
              key: scaffoldKey,
              body: SafeArea(
                top: true,
                child: Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              constraints: BoxConstraints(
                                maxWidth: 530.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  width: 3.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 15.0, 0.0, 15.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1rr43w6i' /* SECTION 2 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    font: GoogleFonts.outfit(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.0,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: FlutterFlowTimer(
                                        initialTime: _model.timerInitialTimeMs,
                                        getDisplayTime: (value) =>
                                            StopWatchTimer.getDisplayTime(
                                          value,
                                          hours: false,
                                          milliSecond: false,
                                        ),
                                        controller: _model.timerController,
                                        updateStateInterval:
                                            Duration(milliseconds: 1000),
                                        onChanged:
                                            (value, displayTime, shouldUpdate) {
                                          _model.timerMilliseconds = value;
                                          _model.timerValue = displayTime;
                                          if (shouldUpdate) safeSetState(() {});
                                        },
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              font: GoogleFonts.outfit(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) => Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 8.0,
                                        buttonSize: 50.0,
                                        icon: Icon(
                                          Icons.power_settings_new,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 32.0,
                                        ),
                                        onPressed: () async {
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(dialogContext)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child: Container(
                                                    height: 300.0,
                                                    child: TeminateWidget(
                                                      childid:
                                                          section2ChildDataRecord!
                                                              .reference,
                                                      numberOfSectionsToDelete:
                                                          1,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Container(
                            width: 360.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.0),
                                topRight: Radius.circular(24.0),
                                bottomLeft: Radius.circular(24.0),
                                bottomRight: Radius.circular(24.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 3.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '830c3bna' /* OUESTION 1: */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF39D2C0),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Divider(
                                        height: 16.0,
                                        thickness: 2.0,
                                        color: FlutterFlowTheme.of(context)
                                            .customColor65,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'ucvzcbkb' /* With whom does the child resid... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.outfit(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: FlutterFlowRadioButton(
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'nxa44cam' /* Parent/s */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '4urgfl8c' /* Other relatives */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'fzsq5yji' /* Hostel */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'brs9wg7c' /* Orphanage/other accommodations... */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '014i08te' /* Other */,
                                            )
                                          ].toList(),
                                          onChanged: (val) async {
                                            safeSetState(() {});
                                            _model.q1 = () {
                                              if ((_model.radioButtonValue1 ==
                                                      'Parent/s') ||
                                                  (_model.radioButtonValue1 ==
                                                      'ತಂದೆ-ತಾಯಿ')) {
                                                return 10;
                                              } else if ((_model
                                                          .radioButtonValue1 ==
                                                      'Other relatives') ||
                                                  (_model.radioButtonValue1 ==
                                                      'ಇತರ ಸಂಬಂಧಿಗಳು')) {
                                                return 60;
                                              } else if ((_model
                                                          .radioButtonValue1 ==
                                                      'Hostel') ||
                                                  (_model.radioButtonValue1 ==
                                                      'ವಿದ್ಯಾರ್ಥಿ ನಿಲಯ')) {
                                                return 80;
                                              } else if ((_model
                                                          .radioButtonValue1 ==
                                                      'Orphanage/other accommodations') ||
                                                  (_model.radioButtonValue1 ==
                                                      'ಅನಾಥಾಶ್ರಮ/ಇತರ ಆಶ್ರಯಗಳು')) {
                                                return 100;
                                              } else {
                                                return 100;
                                              }
                                            }();
                                          },
                                          controller: _model
                                                  .radioButtonValueController1 ??=
                                              FormFieldController<String>(null),
                                          optionHeight: 32.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          selectedTextStyle: FlutterFlowTheme
                                                  .of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .success,
                                          inactiveRadioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        ),
                                      ),
                                      if (_model.radioButtonValue1 == 'Other')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: TextFormField(
                                            controller: _model.textController,
                                            focusNode:
                                                _model.textFieldFocusNode,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'p6s2vfmq' /* Please Specify */,
                                              ),
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                            validator: _model
                                                .textControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Container(
                            width: 360.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.0),
                                topRight: Radius.circular(24.0),
                                bottomLeft: Radius.circular(24.0),
                                bottomRight: Radius.circular(24.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 3.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'dbrefwa6' /* OUESTION 2: */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF39D2C0),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Divider(
                                        height: 16.0,
                                        thickness: 2.0,
                                        color: FlutterFlowTheme.of(context)
                                            .customColor65,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '5pu4otvf' /* What is the mother tongue of t... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.outfit(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: FlutterFlowRadioButton(
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'rvqij869' /* Kannada */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'r2ejokq3' /* English */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '0umd599e' /* Any other */,
                                            )
                                          ].toList(),
                                          onChanged: (val) async {
                                            safeSetState(() {});
                                            _model.q2 = () {
                                              if ((_model.radioButtonValue2 ==
                                                      'Kannada') ||
                                                  (_model.radioButtonValue2 ==
                                                      'ಕನ್ನಡ')) {
                                                return 20;
                                              } else if ((_model
                                                          .radioButtonValue2 ==
                                                      'English') ||
                                                  (_model.radioButtonValue2 ==
                                                      'ಆಂಗ್ಲ')) {
                                                return 40;
                                              } else {
                                                return 100;
                                              }
                                            }();
                                          },
                                          controller: _model
                                                  .radioButtonValueController2 ??=
                                              FormFieldController<String>(null),
                                          optionHeight: 32.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          selectedTextStyle: FlutterFlowTheme
                                                  .of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .success,
                                          inactiveRadioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Container(
                            width: 360.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.0),
                                topRight: Radius.circular(24.0),
                                bottomLeft: Radius.circular(24.0),
                                bottomRight: Radius.circular(24.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 3.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'kx3npmk6' /* OUESTION 3: */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF39D2C0),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Divider(
                                        height: 16.0,
                                        thickness: 2.0,
                                        color: FlutterFlowTheme.of(context)
                                            .customColor65,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'aewfd6eg' /* Is the child first generation ... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.outfit(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: FlutterFlowRadioButton(
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'ce968ppg' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              's48i8hh2' /* No */,
                                            )
                                          ].toList(),
                                          onChanged: (val) async {
                                            safeSetState(() {});
                                            _model.q3 = (_model
                                                            .radioButtonValue3 ==
                                                        'Yes') ||
                                                    (_model.radioButtonValue3 ==
                                                        'ಹೌದು')
                                                ? 0
                                                : 100;
                                          },
                                          controller: _model
                                                  .radioButtonValueController3 ??=
                                              FormFieldController<String>(null),
                                          optionHeight: 32.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          selectedTextStyle: FlutterFlowTheme
                                                  .of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .success,
                                          inactiveRadioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Container(
                            width: 360.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.0),
                                topRight: Radius.circular(24.0),
                                bottomLeft: Radius.circular(24.0),
                                bottomRight: Radius.circular(24.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 3.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '7be0nn72' /* OUESTION 4: */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF39D2C0),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Divider(
                                        height: 16.0,
                                        thickness: 2.0,
                                        color: FlutterFlowTheme.of(context)
                                            .customColor65,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'b90cn95i' /* Are you aware of any serious o... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.outfit(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowRadioButton(
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'deez9pyw' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'xgbi2m1w' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '63tv93e8' /* Not Sure */,
                                            )
                                          ].toList(),
                                          onChanged: (val) async {
                                            safeSetState(() {});
                                            _model.q4 = () {
                                              if ((_model.radioButtonValue4 ==
                                                      'Yes') ||
                                                  (_model.radioButtonValue4 ==
                                                      'ಹೌದು')) {
                                                return 100;
                                              } else if ((_model
                                                          .radioButtonValue4 ==
                                                      'No') ||
                                                  (_model.radioButtonValue4 ==
                                                      'ಇಲ್ಲ')) {
                                                return 0;
                                              } else {
                                                return 50;
                                              }
                                            }();
                                          },
                                          controller: _model
                                                  .radioButtonValueController4 ??=
                                              FormFieldController<String>(null),
                                          optionHeight: 32.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          selectedTextStyle: FlutterFlowTheme
                                                  .of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .success,
                                          inactiveRadioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Container(
                            width: 360.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.0),
                                topRight: Radius.circular(24.0),
                                bottomLeft: Radius.circular(24.0),
                                bottomRight: Radius.circular(24.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 3.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'l86j2etx' /* OUESTION 5: */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF39D2C0),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Divider(
                                        height: 16.0,
                                        thickness: 2.0,
                                        color: FlutterFlowTheme.of(context)
                                            .customColor65,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '9kz1pbmr' /* Are you aware of any significa... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.outfit(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowRadioButton(
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              '1246kw4t' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'mh0ykht3' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'kkck3chn' /* Not Sure */,
                                            )
                                          ].toList(),
                                          onChanged: (val) async {
                                            safeSetState(() {});
                                            _model.q5 = () {
                                              if ((_model.radioButtonValue5 ==
                                                      'Yes') ||
                                                  (_model.radioButtonValue5 ==
                                                      'ಹೌದು')) {
                                                return 100;
                                              } else if ((_model
                                                          .radioButtonValue5 ==
                                                      'No') ||
                                                  (_model.radioButtonValue5 ==
                                                      'ಇಲ್ಲ')) {
                                                return 0;
                                              } else {
                                                return 50;
                                              }
                                            }();
                                          },
                                          controller: _model
                                                  .radioButtonValueController5 ??=
                                              FormFieldController<String>(null),
                                          optionHeight: 32.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          selectedTextStyle: FlutterFlowTheme
                                                  .of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .success,
                                          inactiveRadioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 15.0),
                          child: FFButtonWidget(
                            onPressed: ((_model.radioButtonValue1 == null ||
                                            _model.radioButtonValue1 == '') ||
                                        (_model.radioButtonValue2 == null ||
                                            _model.radioButtonValue2 == '') ||
                                        (_model.radioButtonValue3 == null ||
                                            _model.radioButtonValue3 == '') ||
                                        (_model.radioButtonValue4 == null ||
                                            _model.radioButtonValue4 == '') ||
                                        (_model.radioButtonValue5 == null ||
                                            _model.radioButtonValue5 == '')
                                    ? true
                                    : false)
                                ? null
                                : () async {
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text(FFLocalizations
                                                                  .of(context)
                                                              .languageCode ==
                                                          'kn'
                                                      ? 'ದೃಢೀಕರಣವನ್ನು ಸಲ್ಲಿಸಿ'
                                                      : 'Submit Confirmation'),
                                                  content: Text(FFLocalizations
                                                                  .of(context)
                                                              .languageCode ==
                                                          'kn'
                                                      ? 'ನೀವು ಸಲ್ಲಿಸಲು ಖಚಿತವಾಗಿ ಬಯಸುವಿರಾ?'
                                                      : 'Are you sure you want to submit?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: Text(FFLocalizations
                                                                      .of(context)
                                                                  .languageCode ==
                                                              'kn'
                                                          ? 'ರದ್ದುಮಾಡು'
                                                          : 'Cancel'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: Text(FFLocalizations
                                                                      .of(context)
                                                                  .languageCode ==
                                                              'kn'
                                                          ? 'ಹೌದು'
                                                          : 'Yes'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (confirmDialogResponse) {
                                      await Section2Record.collection
                                          .doc()
                                          .set(createSection2RecordData(
                                            s2q1: (_model.radioButtonValue1 ==
                                                        'Other') ||
                                                    (_model.radioButtonValue1 ==
                                                        'ಇತರ')
                                                ? functions.trimSpaces(
                                                    _model.textController.text)
                                                : () {
                                                    if ((_model.radioButtonValue1 ==
                                                            'ತಂದೆ-ತಾಯಿ') &&
                                                        (FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'kn')) {
                                                      return 'Parent/s';
                                                    } else if ((_model
                                                                .radioButtonValue1 ==
                                                            'ಇತರ ಸಂಬಂಧಿಗಳು') &&
                                                        (FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'kn')) {
                                                      return 'Other relatives';
                                                    } else if ((_model
                                                                .radioButtonValue1 ==
                                                            'ವಿದ್ಯಾರ್ಥಿ ನಿಲಯ') &&
                                                        (FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'kn')) {
                                                      return 'Hostel';
                                                    } else if ((_model
                                                                .radioButtonValue1 ==
                                                            'ಅನಾಥಾಶ್ರಮ/ಇತರ ಆಶ್ರಯಗಳು') &&
                                                        (FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'kn')) {
                                                      return 'Orphanage/other accommodations';
                                                    } else {
                                                      return _model
                                                          .radioButtonValue1;
                                                    }
                                                  }(),
                                            s2q2: () {
                                              if ((_model.radioButtonValue2 ==
                                                      'ಕನ್ನಡ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Kannada';
                                              } else if ((_model
                                                          .radioButtonValue2 ==
                                                      'ಆಂಗ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'English';
                                              } else if ((_model
                                                          .radioButtonValue2 ==
                                                      'ಇತರ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Any other';
                                              } else {
                                                return _model.radioButtonValue2;
                                              }
                                            }(),
                                            s2q3: () {
                                              if ((_model.radioButtonValue3 ==
                                                      'ಹೌದು') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Yes';
                                              } else if ((_model
                                                          .radioButtonValue3 ==
                                                      'ಇಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'No';
                                              } else {
                                                return _model.radioButtonValue3;
                                              }
                                            }(),
                                            s2q4: () {
                                              if ((_model.radioButtonValue4 ==
                                                      'ಹೌದು') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Yes';
                                              } else if ((_model
                                                          .radioButtonValue4 ==
                                                      'ಇಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'No';
                                              } else if ((_model
                                                          .radioButtonValue4 ==
                                                      'ಸರಿಯಾಗಿ ಗೊತ್ತಿಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Not sure';
                                              } else {
                                                return _model.radioButtonValue4;
                                              }
                                            }(),
                                            s2q5: () {
                                              if ((_model.radioButtonValue5 ==
                                                      'ಹೌದು') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Yes';
                                              } else if ((_model
                                                          .radioButtonValue5 ==
                                                      'ಇಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'No';
                                              } else if ((_model
                                                          .radioButtonValue5 ==
                                                      'ಸರಿಯಾಗಿ ಗೊತ್ತಿಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Not sure';
                                              } else {
                                                return _model.radioButtonValue5;
                                              }
                                            }(),
                                            uid: currentUserReference,
                                            cid: section2ChildDataRecord
                                                ?.reference,
                                            s2q1k: (_model.radioButtonValue1 ==
                                                        'Other') ||
                                                    (_model.radioButtonValue1 ==
                                                        'ಇತರ')
                                                ? functions.trimSpaces(
                                                    _model.textController.text)
                                                : () {
                                                    if ((_model.radioButtonValue1 ==
                                                            'Parent/s') &&
                                                        (FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'en')) {
                                                      return 'ತಂದೆ-ತಾಯಿ';
                                                    } else if ((_model
                                                                .radioButtonValue1 ==
                                                            'Other relatives') &&
                                                        (FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'en')) {
                                                      return 'ಇತರ ಸಂಬಂಧಿಗಳು';
                                                    } else if ((_model
                                                                .radioButtonValue1 ==
                                                            'Hostel') &&
                                                        (FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'en')) {
                                                      return 'ವಿದ್ಯಾರ್ಥಿ ನಿಲಯ';
                                                    } else if ((_model
                                                                .radioButtonValue1 ==
                                                            'Orphanage/other accommodations') &&
                                                        (FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'en')) {
                                                      return 'ಅನಾಥಾಶ್ರಮ/ಇತರ ಆಶ್ರಯಗಳು';
                                                    } else {
                                                      return _model
                                                          .radioButtonValue1;
                                                    }
                                                  }(),
                                            s2q2k: () {
                                              if ((_model.radioButtonValue2 ==
                                                      'Kannada') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಕನ್ನಡ';
                                              } else if ((_model
                                                          .radioButtonValue2 ==
                                                      'English') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಆಂಗ್ಲ';
                                              } else if ((_model
                                                          .radioButtonValue2 ==
                                                      'Any other') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಇತರ';
                                              } else {
                                                return _model.radioButtonValue2;
                                              }
                                            }(),
                                            s2q3k: () {
                                              if ((_model.radioButtonValue3 ==
                                                      'Yes') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಹೌದು';
                                              } else if ((_model
                                                          .radioButtonValue3 ==
                                                      'No') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಇಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue3;
                                              }
                                            }(),
                                            s2q4k: () {
                                              if ((_model.radioButtonValue4 ==
                                                      'Yes') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಹೌದು';
                                              } else if ((_model
                                                          .radioButtonValue4 ==
                                                      'No') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಇಲ್ಲ';
                                              } else if ((_model
                                                          .radioButtonValue4 ==
                                                      'Not sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಸರಿಯಾಗಿ ಗೊತ್ತಿಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue4;
                                              }
                                            }(),
                                            s2q5k: () {
                                              if ((_model.radioButtonValue5 ==
                                                      'Yes') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಹೌದು';
                                              } else if ((_model
                                                          .radioButtonValue5 ==
                                                      'No') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಇಲ್ಲ';
                                              } else if ((_model
                                                          .radioButtonValue5 ==
                                                      'Not sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಸರಿಯಾಗಿ ಗೊತ್ತಿಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue5;
                                              }
                                            }(),
                                          ));
                                      FFAppState().s2eval = _model.q1 +
                                          (_model.q2!) +
                                          (_model.q3!) +
                                          _model.q4 +
                                          _model.q5;
                                      FFAppState().t2 =
                                          _model.timerMilliseconds;
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Section 2 Completed',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 3000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                      if (Navigator.of(context).canPop()) {
                                        context.pop();
                                      }
                                      context.pushNamed(
                                        Section3Widget.routeName,
                                        queryParameters: {
                                          'childid': serializeParam(
                                            widget.childid,
                                            ParamType.String,
                                          ),
                                          'grade': serializeParam(
                                            widget.grade,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );

                                      safeSetState(() {
                                        _model.textController?.clear();
                                      });
                                      safeSetState(() {
                                        _model.radioButtonValueController1
                                            ?.reset();
                                        _model.radioButtonValueController2
                                            ?.reset();
                                        _model.radioButtonValueController3
                                            ?.reset();
                                        _model.radioButtonValueController4
                                            ?.reset();
                                        _model.radioButtonValueController5
                                            ?.reset();
                                      });
                                      return;
                                    } else {
                                      return;
                                    }
                                  },
                            text: FFLocalizations.of(context).getText(
                              '3n14mnos' /* Next */,
                            ),
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFA251E7),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                              disabledColor: Color(0xC957636C),
                              disabledTextColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

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
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'section3_model.dart';
export 'section3_model.dart';

class Section3Widget extends StatefulWidget {
  const Section3Widget({
    super.key,
    required this.childid,
    required this.grade,
  });

  final String? childid;
  final String? grade;

  static String routeName = 'Section_3';
  static String routePath = '/section3';

  @override
  State<Section3Widget> createState() => _Section3WidgetState();
}

class _Section3WidgetState extends State<Section3Widget> {
  late Section3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Section3Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
    });

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
        List<ChildDataRecord> section3ChildDataRecordList = snapshot.data!;
        final section3ChildDataRecord = section3ChildDataRecordList.isNotEmpty
            ? section3ChildDataRecordList.first
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
                      mainAxisAlignment: MainAxisAlignment.start,
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
                                                'iqjpik7c' /* SECTION 3 */,
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
                                                          section3ChildDataRecord!
                                                              .reference,
                                                      numberOfSectionsToDelete:
                                                          2,
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
                                          'jj96i3lt' /* OUESTION 1: */,
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
                                          'a7s03vll' /* Is the child lagging persisten... */,
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
                                              'ssg99hfj' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'x9pcreky' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'xofa9xey' /* Not sure */,
                                            )
                                          ].toList(),
                                          onChanged: (val) async {
                                            safeSetState(() {});
                                            _model.q1 = () {
                                              if ((_model.radioButtonValue1 ==
                                                      'Yes') ||
                                                  (_model.radioButtonValue1 ==
                                                      'ಹೌದು')) {
                                                return 100;
                                              } else if ((_model
                                                          .radioButtonValue1 ==
                                                      'No') ||
                                                  (_model.radioButtonValue1 ==
                                                      'ಇಲ್ಲ')) {
                                                return 0;
                                              } else {
                                                return 50;
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
                                          'x2k9xm0s' /* OUESTION 2: */,
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
                                          'idou1gh6' /* Is the child irregular in atte... */,
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
                                              'qcbtjxir' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '1gu49gzq' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '7agr0tev' /* Not sure */,
                                            )
                                          ].toList(),
                                          onChanged: (val) async {
                                            safeSetState(() {});
                                            _model.q2 = () {
                                              if ((_model.radioButtonValue2 ==
                                                      'Yes') ||
                                                  (_model.radioButtonValue2 ==
                                                      'ಹೌದು')) {
                                                return 100;
                                              } else if ((_model
                                                          .radioButtonValue2 ==
                                                      'No') ||
                                                  (_model.radioButtonValue2 ==
                                                      'ಇಲ್ಲ')) {
                                                return 0;
                                              } else {
                                                return 50;
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
                                          '42eof5te' /* OUESTION 3: */,
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
                                          '3ryp43lq' /* Is the child having any histor... */,
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
                                              '9is2sc2u' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '0adaewe7' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'ttfwwdoi' /* Not sure */,
                                            )
                                          ].toList(),
                                          onChanged: (val) async {
                                            safeSetState(() {});
                                            _model.q3 = () {
                                              if ((_model.radioButtonValue3 ==
                                                      'Yes') ||
                                                  (_model.radioButtonValue3 ==
                                                      'ಹೌದು')) {
                                                return 100;
                                              } else if ((_model
                                                          .radioButtonValue3 ==
                                                      'No') ||
                                                  (_model.radioButtonValue3 ==
                                                      'ಇಲ್ಲ')) {
                                                return 0;
                                              } else {
                                                return 50;
                                              }
                                            }();
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
                                          '1wfxtqc9' /* OUESTION 4: */,
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
                                          '8kylxyza' /* Does child have any persistent... */,
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
                                              'mtdlkfim' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'ele91cvq' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'qb4amfex' /* Not sure */,
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
                                          'xv9dj3ef' /* OUESTION 5: */,
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
                                          'vgfv3suh' /* Does child have persistent att... */,
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
                                              'bw352c3w' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'toirh4yb' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'f11y002p' /* Not sure */,
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
                                          'amgyukvm' /* OUESTION 6: */,
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
                                          'e7qs89vt' /* Does the child have considerab... */,
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
                                              'p7qs92em' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'tok8aued' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'cc411pio' /* Not sure */,
                                            )
                                          ].toList(),
                                          onChanged: (val) async {
                                            safeSetState(() {});
                                            _model.q6 = () {
                                              if ((_model.radioButtonValue6 ==
                                                      'Yes') ||
                                                  (_model.radioButtonValue6 ==
                                                      'ಹೌದು')) {
                                                return 100;
                                              } else if ((_model
                                                          .radioButtonValue6 ==
                                                      'No') ||
                                                  (_model.radioButtonValue6 ==
                                                      'ಇಲ್ಲ')) {
                                                return 0;
                                              } else {
                                                return 50;
                                              }
                                            }();
                                          },
                                          controller: _model
                                                  .radioButtonValueController6 ??=
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
                                          'xyipf8f8' /* OUESTION 7: */,
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
                                          '6ok18kcl' /* Does the child have any emotio... */,
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
                                              'imdi02pi' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'n5kah8gc' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'v8jfbc39' /* Not sure */,
                                            )
                                          ].toList(),
                                          onChanged: (val) async {
                                            safeSetState(() {});
                                            _model.q7 = () {
                                              if ((_model.radioButtonValue7 ==
                                                      'Yes') ||
                                                  (_model.radioButtonValue7 ==
                                                      'ಹೌದು')) {
                                                return 100;
                                              } else if ((_model
                                                          .radioButtonValue7 ==
                                                      'No') ||
                                                  (_model.radioButtonValue7 ==
                                                      'ಇಲ್ಲ')) {
                                                return 0;
                                              } else {
                                                return 50;
                                              }
                                            }();
                                          },
                                          controller: _model
                                                  .radioButtonValueController7 ??=
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
                                            _model.radioButtonValue5 == '') ||
                                        (_model.radioButtonValue6 == null ||
                                            _model.radioButtonValue6 == '') ||
                                        (_model.radioButtonValue7 == null ||
                                            _model.radioButtonValue7 == '')
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
                                      await Section3Record.collection
                                          .doc()
                                          .set(createSection3RecordData(
                                            s3q1: () {
                                              if ((_model.radioButtonValue1 ==
                                                      'ಹೌದು') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Yes';
                                              } else if ((_model
                                                          .radioButtonValue1 ==
                                                      'ಇಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'No';
                                              } else if ((_model
                                                          .radioButtonValue1 ==
                                                      'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Not sure';
                                              } else {
                                                return _model.radioButtonValue1;
                                              }
                                            }(),
                                            s3q2: () {
                                              if ((_model.radioButtonValue2 ==
                                                      'ಹೌದು') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Yes';
                                              } else if ((_model
                                                          .radioButtonValue2 ==
                                                      'ಇಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'No';
                                              } else if ((_model
                                                          .radioButtonValue2 ==
                                                      'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Not sure';
                                              } else {
                                                return _model.radioButtonValue2;
                                              }
                                            }(),
                                            s3q3: () {
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
                                              } else if ((_model
                                                          .radioButtonValue3 ==
                                                      'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Not sure';
                                              } else {
                                                return _model.radioButtonValue3;
                                              }
                                            }(),
                                            s3q4: () {
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
                                                      'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Not sure';
                                              } else {
                                                return _model.radioButtonValue4;
                                              }
                                            }(),
                                            s3q5: () {
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
                                                      'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Not sure';
                                              } else {
                                                return _model.radioButtonValue5;
                                              }
                                            }(),
                                            s3q6: () {
                                              if ((_model.radioButtonValue6 ==
                                                      'ಹೌದು') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Yes';
                                              } else if ((_model
                                                          .radioButtonValue6 ==
                                                      'ಇಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'No';
                                              } else if ((_model
                                                          .radioButtonValue6 ==
                                                      'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Not sure';
                                              } else {
                                                return _model.radioButtonValue6;
                                              }
                                            }(),
                                            s3q7: () {
                                              if ((_model.radioButtonValue7 ==
                                                      'ಹೌದು') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Yes';
                                              } else if ((_model
                                                          .radioButtonValue7 ==
                                                      'ಇಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'No';
                                              } else if ((_model
                                                          .radioButtonValue7 ==
                                                      'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Not sure';
                                              } else {
                                                return _model.radioButtonValue7;
                                              }
                                            }(),
                                            uid: currentUserReference,
                                            cid: section3ChildDataRecord
                                                ?.reference,
                                            s3q1k: () {
                                              if ((_model.radioButtonValue1 ==
                                                      'Yes') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಹೌದು';
                                              } else if ((_model
                                                          .radioButtonValue1 ==
                                                      'No') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಇಲ್ಲ';
                                              } else if ((_model
                                                          .radioButtonValue1 ==
                                                      'Not sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಸರಿಯಾಗಿ ಗೊತ್ತಿಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue1;
                                              }
                                            }(),
                                            s3q2k: () {
                                              if ((_model.radioButtonValue2 ==
                                                      'Yes') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಹೌದು';
                                              } else if ((_model
                                                          .radioButtonValue2 ==
                                                      'No') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಇಲ್ಲ';
                                              } else if ((_model
                                                          .radioButtonValue2 ==
                                                      'Not sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಸರಿಯಾಗಿ ಗೊತ್ತಿಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue2;
                                              }
                                            }(),
                                            s3q3k: () {
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
                                              } else if ((_model
                                                          .radioButtonValue3 ==
                                                      'Not sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಸರಿಯಾಗಿ ಗೊತ್ತಿಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue3;
                                              }
                                            }(),
                                            s3q4k: () {
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
                                            s3q5k: () {
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
                                            s3q6k: () {
                                              if ((_model.radioButtonValue6 ==
                                                      'Yes') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಹೌದು';
                                              } else if ((_model
                                                          .radioButtonValue6 ==
                                                      'No') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಇಲ್ಲ';
                                              } else if ((_model
                                                          .radioButtonValue6 ==
                                                      'Not sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಸರಿಯಾಗಿ ಗೊತ್ತಿಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue6;
                                              }
                                            }(),
                                            s3q7k: () {
                                              if ((_model.radioButtonValue7 ==
                                                      'Yes') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಹೌದು';
                                              } else if ((_model
                                                          .radioButtonValue7 ==
                                                      'No') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಇಲ್ಲ';
                                              } else if ((_model
                                                          .radioButtonValue7 ==
                                                      'Not sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಸರಿಯಾಗಿ ಗೊತ್ತಿಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue7;
                                              }
                                            }(),
                                          ));
                                      FFAppState().s3eval = _model.q1 +
                                          _model.q2 +
                                          _model.q3 +
                                          _model.q4 +
                                          _model.q5 +
                                          _model.q6 +
                                          _model.q7;
                                      FFAppState().t3 =
                                          _model.timerMilliseconds;
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Section 3 Completed',
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
                                        Section4Widget.routeName,
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
                                        _model.radioButtonValueController6
                                            ?.reset();
                                        _model.radioButtonValueController7
                                            ?.reset();
                                      });
                                      return;
                                    } else {
                                      return;
                                    }
                                  },
                            text: FFLocalizations.of(context).getText(
                              '74x881eo' /* Next */,
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
                              disabledColor: Color(0xD157636C),
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

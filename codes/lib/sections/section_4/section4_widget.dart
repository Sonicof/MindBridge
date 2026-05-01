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
import 'package:provider/provider.dart';
import 'section4_model.dart';
export 'section4_model.dart';

class Section4Widget extends StatefulWidget {
  const Section4Widget({
    super.key,
    required this.childid,
    required this.grade,
  });

  final String? childid;
  final String? grade;

  static String routeName = 'Section_4';
  static String routePath = '/section4';

  @override
  State<Section4Widget> createState() => _Section4WidgetState();
}

class _Section4WidgetState extends State<Section4Widget> {
  late Section4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Section4Model());

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
    context.watch<FFAppState>();

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
        List<ChildDataRecord> section4ChildDataRecordList = snapshot.data!;
        final section4ChildDataRecord = section4ChildDataRecordList.isNotEmpty
            ? section4ChildDataRecordList.first
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            FFLocalizations.of(context).getText(
                                              'q0ofn2gf' /* SECTION 4 */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  font: GoogleFonts.outfit(
                                                    fontWeight: FontWeight.w800,
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
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
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
                                                        section4ChildDataRecord!
                                                            .reference,
                                                    numberOfSectionsToDelete: 3,
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
                            10.0, 30.0, 10.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          constraints: BoxConstraints(
                            maxWidth: 530.0,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFBE53D9),
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              width: 1.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 15.0, 0.0, 15.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ieg2m368' /* In what area does the child ha... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        font: GoogleFonts.outfit(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 30.0, 10.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 530.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().dropdown1section4 =
                                        !(FFAppState().dropdown1section4 ??
                                            true);
                                    safeSetState(() {});
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/reading-book.png',
                                            width: 50.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 15.0, 0.0, 15.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ah8284b7' /* Reading */,
                                            ),
                                            textAlign: TextAlign.justify,
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 15.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          borderRadius: 22.0,
                                          borderWidth: 2.0,
                                          buttonSize: 40.0,
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            FFAppState().dropdown1section4 =
                                                !(FFAppState()
                                                        .dropdown1section4 ??
                                                    true);
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (FFAppState().dropdown1section4)
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Form(
                                      key: _model.formKey2,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '30ow7tqb' /* OUESTION 1: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'c090lg00' /* Does the child considerable ha... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '257iqg4n' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'hj1fia0o' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q11 = () {
                                                                if (((_model.radioButtonValue1 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue1 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 5;
                                                                } else if (((_model.radioButtonValue1 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue1 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 10;
                                                                } else if (((_model.radioButtonValue1 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue1 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 20;
                                                                } else if (((_model.radioButtonValue1 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue1 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 40;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController1 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '6dleebqa' /* OUESTION 2: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'jrbxkdhm' /* Is the child considerably slow... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'so3kivwl' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'jafkywlc' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q12 = () {
                                                                if (((_model.radioButtonValue2 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue2 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 10;
                                                                } else if (((_model.radioButtonValue2 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue2 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 20;
                                                                } else if (((_model.radioButtonValue2 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue2 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue2 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue2 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 60;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController2 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '6g69whcu' /* OUESTION 3: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            's94qpckw' /* Is the child considerably non-... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'gg63r0vu' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'qjfija05' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q13 = () {
                                                                if (((_model.radioButtonValue3 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue3 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 20;
                                                                } else if (((_model.radioButtonValue3 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue3 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue3 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue3 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 60;
                                                                } else if (((_model.radioButtonValue3 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue3 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 80;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController3 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'dbjnmei8' /* OUESTION 4: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '4uluikge' /* Does the child have considerab... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'fsckbmes' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'i9d0677d' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q14 = () {
                                                                if (((_model.radioButtonValue4 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue4 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue4 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue4 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 60;
                                                                } else if (((_model.radioButtonValue4 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue4 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 80;
                                                                } else if (((_model.radioButtonValue4 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue4 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 100;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController4 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '1boy8hjk' /* OUESTION 5: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'kcrlt18h' /* What language does this happen... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'sxz11d9j' /* Kannada */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'fa0pbbeb' /* English */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'ntc28vmq' /* Other Language */,
                                                              )
                                                            ].toList(),
                                                            onChanged: (((_model.radioButtonValue1 == 'No') || (_model.radioButtonValue1 == 'ಇಲ್ಲ')) &&
                                                                        ((_model.radioButtonValue2 ==
                                                                                'No') ||
                                                                            (_model.radioButtonValue2 ==
                                                                                'ಇಲ್ಲ')) &&
                                                                        ((_model.radioButtonValue3 ==
                                                                                'No') ||
                                                                            (_model.radioButtonValue3 ==
                                                                                'ಇಲ್ಲ')) &&
                                                                        ((_model.radioButtonValue4 ==
                                                                                'No') ||
                                                                            (_model.radioButtonValue4 ==
                                                                                'ಇಲ್ಲ'))
                                                                    ? true
                                                                    : false)
                                                                ? null
                                                                : (val) async {
                                                                    safeSetState(
                                                                        () {});
                                                                    _model.q15 =
                                                                        () {
                                                                      if (((_model.radioButtonValue5 == 'Kannada') || (_model.radioButtonValue5 == 'ಕನ್ನಡ')) &&
                                                                          (widget.grade ==
                                                                              '1')) {
                                                                        return 40;
                                                                      } else if (((_model.radioButtonValue5 == 'Kannada') || (_model.radioButtonValue5 == 'ಕನ್ನಡ')) &&
                                                                          (widget.grade ==
                                                                              '2')) {
                                                                        return 60;
                                                                      } else if (((_model.radioButtonValue5 == 'Kannada') || (_model.radioButtonValue5 == 'ಕನ್ನಡ')) &&
                                                                          (widget.grade ==
                                                                              '3')) {
                                                                        return 80;
                                                                      } else if (((_model.radioButtonValue5 == 'Kannada') || (_model.radioButtonValue5 == 'ಕನ್ನಡ')) &&
                                                                          (widget.grade ==
                                                                              '4')) {
                                                                        return 100;
                                                                      } else if (((_model.radioButtonValue5 == 'English') || (_model.radioButtonValue5 == 'ಆಂಗ್ಲ')) &&
                                                                          (widget.grade ==
                                                                              '1')) {
                                                                        return 20;
                                                                      } else if (((_model.radioButtonValue5 == 'English') || (_model.radioButtonValue5 == 'ಆಂಗ್ಲ')) &&
                                                                          (widget.grade ==
                                                                              '2')) {
                                                                        return 40;
                                                                      } else if (((_model.radioButtonValue5 == 'English') || (_model.radioButtonValue5 == 'ಆಂಗ್ಲ')) &&
                                                                          (widget.grade ==
                                                                              '3')) {
                                                                        return 60;
                                                                      } else if (((_model.radioButtonValue5 == 'English') || (_model.radioButtonValue5 == 'ಆಂಗ್ಲ')) &&
                                                                          (widget.grade ==
                                                                              '4')) {
                                                                        return 80;
                                                                      } else if (((_model.radioButtonValue5 == 'Other Language') || (_model.radioButtonValue5 == 'ಇತರ ಭಾಷೆ')) &&
                                                                          (widget.grade ==
                                                                              '1')) {
                                                                        return 10;
                                                                      } else if (((_model.radioButtonValue5 == 'Other Language') || (_model.radioButtonValue5 == 'ಇತರ ಭಾಷೆ')) &&
                                                                          (widget.grade ==
                                                                              '2')) {
                                                                        return 20;
                                                                      } else if (((_model.radioButtonValue5 == 'Other Language') || (_model.radioButtonValue5 == 'ಇತರ ಭಾಷೆ')) &&
                                                                          (widget.grade ==
                                                                              '3')) {
                                                                        return 40;
                                                                      } else if (((_model.radioButtonValue5 == 'Other Language') ||
                                                                              (_model.radioButtonValue5 ==
                                                                                  'ಇತರ ಭಾಷೆ')) &&
                                                                          (widget.grade ==
                                                                              '4')) {
                                                                        return 60;
                                                                      } else {
                                                                        return 0;
                                                                      }
                                                                    }();
                                                                  },
                                                            controller: _model
                                                                    .radioButtonValueController5 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 20.0, 10.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 530.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().dropdown2section4 =
                                        !(FFAppState().dropdown2section4 ??
                                            true);
                                    safeSetState(() {});
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.asset(
                                            'assets/images/sheet.png',
                                            width: 50.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 15.0, 0.0, 15.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '5unknqyi' /* Writing */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 15.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          borderRadius: 22.0,
                                          borderWidth: 2.0,
                                          buttonSize: 40.0,
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            FFAppState().dropdown2section4 =
                                                !(FFAppState()
                                                        .dropdown2section4 ??
                                                    true);
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (FFAppState().dropdown2section4)
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Form(
                                      key: _model.formKey4,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '8713n8g7' /* OUESTION 1: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '9anu09ub' /* Is the child considerably slow... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                't16digoj' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'iyemdz19' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q21 = () {
                                                                if (((_model.radioButtonValue6 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue6 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 5;
                                                                } else if (((_model.radioButtonValue6 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue6 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 10;
                                                                } else if (((_model.radioButtonValue6 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue6 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 20;
                                                                } else if (((_model.radioButtonValue6 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue6 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 40;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController6 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'bu3pa40t' /* OUESTION 2: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'p40lw4p3' /* Does the child have considerab... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'zlpunevf' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                't94tqgln' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q22 = () {
                                                                if (((_model.radioButtonValue7 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue7 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 10;
                                                                } else if (((_model.radioButtonValue7 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue7 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 20;
                                                                } else if (((_model.radioButtonValue7 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue7 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue7 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue7 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 60;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController7 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '9m830pjr' /* OUESTION 3: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '6rli6n4t' /* Does the child make frequent m... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'jjtye1ze' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'hvpmqhgy' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q23 = () {
                                                                if (((_model.radioButtonValue8 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue8 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 20;
                                                                } else if (((_model.radioButtonValue8 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue8 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue8 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue8 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 60;
                                                                } else if (((_model.radioButtonValue8 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue8 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 80;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController8 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '3btqlkc7' /* OUESTION 4: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            's1l2494d' /* Does the child have considerab... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'oynfadqh' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'fcb6viod' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q24 = () {
                                                                if (((_model.radioButtonValue9 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue9 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue9 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue9 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 60;
                                                                } else if (((_model.radioButtonValue9 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue9 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 80;
                                                                } else if (((_model.radioButtonValue9 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue9 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 100;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController9 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'qmc86zsz' /* OUESTION 5: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'wy1wh64j' /* What language does this happen... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '1uaphoit' /* Kannada */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                't0erjj8c' /* English */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '8ef7te3i' /* Other Language */,
                                                              )
                                                            ].toList(),
                                                            onChanged: (((_model.radioButtonValue6 == 'No') || (_model.radioButtonValue6 == 'ಇಲ್ಲ')) &&
                                                                        ((_model.radioButtonValue7 ==
                                                                                'No') ||
                                                                            (_model.radioButtonValue7 ==
                                                                                'ಇಲ್ಲ')) &&
                                                                        ((_model.radioButtonValue8 ==
                                                                                'No') ||
                                                                            (_model.radioButtonValue8 ==
                                                                                'ಇಲ್ಲ')) &&
                                                                        ((_model.radioButtonValue9 ==
                                                                                'No') ||
                                                                            (_model.radioButtonValue9 ==
                                                                                'ಇಲ್ಲ'))
                                                                    ? true
                                                                    : false)
                                                                ? null
                                                                : (val) async {
                                                                    safeSetState(
                                                                        () {});
                                                                    _model.q25 =
                                                                        () {
                                                                      if (((_model.radioButtonValue10 == 'Kannada') || (_model.radioButtonValue10 == 'ಕನ್ನಡ')) &&
                                                                          (widget.grade ==
                                                                              '1')) {
                                                                        return 40;
                                                                      } else if (((_model.radioButtonValue10 == 'Kannada') || (_model.radioButtonValue10 == 'ಕನ್ನಡ')) &&
                                                                          (widget.grade ==
                                                                              '2')) {
                                                                        return 60;
                                                                      } else if (((_model.radioButtonValue10 == 'Kannada') || (_model.radioButtonValue10 == 'ಕನ್ನಡ')) &&
                                                                          (widget.grade ==
                                                                              '3')) {
                                                                        return 80;
                                                                      } else if (((_model.radioButtonValue10 == 'Kannada') || (_model.radioButtonValue10 == 'ಕನ್ನಡ')) &&
                                                                          (widget.grade ==
                                                                              '4')) {
                                                                        return 100;
                                                                      } else if (((_model.radioButtonValue10 == 'English') || (_model.radioButtonValue10 == 'ಆಂಗ್ಲ')) &&
                                                                          (widget.grade ==
                                                                              '1')) {
                                                                        return 20;
                                                                      } else if (((_model.radioButtonValue10 == 'English') || (_model.radioButtonValue10 == 'ಆಂಗ್ಲ')) &&
                                                                          (widget.grade ==
                                                                              '2')) {
                                                                        return 40;
                                                                      } else if (((_model.radioButtonValue10 == 'English') || (_model.radioButtonValue10 == 'ಆಂಗ್ಲ')) &&
                                                                          (widget.grade ==
                                                                              '3')) {
                                                                        return 60;
                                                                      } else if (((_model.radioButtonValue10 == 'English') || (_model.radioButtonValue10 == 'ಆಂಗ್ಲ')) &&
                                                                          (widget.grade ==
                                                                              '4')) {
                                                                        return 80;
                                                                      } else if (((_model.radioButtonValue10 == 'Other Language') || (_model.radioButtonValue10 == 'ಇತರ ಭಾಷೆ')) &&
                                                                          (widget.grade ==
                                                                              '1')) {
                                                                        return 10;
                                                                      } else if (((_model.radioButtonValue10 == 'Other Language') || (_model.radioButtonValue10 == 'ಇತರ ಭಾಷೆ')) &&
                                                                          (widget.grade ==
                                                                              '2')) {
                                                                        return 20;
                                                                      } else if (((_model.radioButtonValue10 == 'Other Language') || (_model.radioButtonValue10 == 'ಇತರ ಭಾಷೆ')) &&
                                                                          (widget.grade ==
                                                                              '3')) {
                                                                        return 40;
                                                                      } else if (((_model.radioButtonValue10 == 'Other Language') ||
                                                                              (_model.radioButtonValue10 ==
                                                                                  'ಇತರ ಭಾಷೆ')) &&
                                                                          (widget.grade ==
                                                                              '4')) {
                                                                        return 60;
                                                                      } else {
                                                                        return 0;
                                                                      }
                                                                    }();
                                                                  },
                                                            controller: _model
                                                                    .radioButtonValueController10 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 20.0, 10.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 530.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().dropdown3section4 =
                                        !(FFAppState().dropdown3section4 ??
                                            true);
                                    safeSetState(() {});
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.asset(
                                            'assets/images/maths.png',
                                            width: 50.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 15.0, 0.0, 15.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'krmm46hh' /* Math */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 15.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          borderRadius: 22.0,
                                          borderWidth: 2.0,
                                          buttonSize: 40.0,
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            FFAppState().dropdown3section4 =
                                                !(FFAppState()
                                                        .dropdown3section4 ??
                                                    true);
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (FFAppState().dropdown3section4)
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Form(
                                      key: _model.formKey1,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'n6snmjyr' /* OUESTION 1: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'gvkiv4b0' /* Does the child have consistent... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '0q8yj4f2' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'afovg48o' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q31 = () {
                                                                if (((_model.radioButtonValue11 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue11 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 0;
                                                                } else if (((_model.radioButtonValue11 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue11 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 5;
                                                                } else if (((_model.radioButtonValue11 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue11 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 10;
                                                                } else if (((_model.radioButtonValue11 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue11 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 20;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController11 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ex87kpaj' /* OUESTION 2: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ep1r452y' /* Does the child have significan... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '9r3ojw8d' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'bx59k54a' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q32 = () {
                                                                if (((_model.radioButtonValue12 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue12 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 5;
                                                                } else if (((_model.radioButtonValue12 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue12 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 10;
                                                                } else if (((_model.radioButtonValue12 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue12 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 20;
                                                                } else if (((_model.radioButtonValue12 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue12 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 40;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController12 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '10db43e7' /* OUESTION 3: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'yvzrqpk0' /* Does the child have significan... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'dq2z2e7y' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'p9qfslog' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q33 = () {
                                                                if (((_model.radioButtonValue13 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue13 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 10;
                                                                } else if (((_model.radioButtonValue13 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue13 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 20;
                                                                } else if (((_model.radioButtonValue13 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue13 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue13 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue13 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 60;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController13 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'q89cjfr2' /* OUESTION 4: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '7y3wafrt' /* Does the child have considerab... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '20ehpvjl' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'vr75kre0' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q34 = () {
                                                                if (((_model.radioButtonValue14 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue14 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 20;
                                                                } else if (((_model.radioButtonValue14 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue14 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue14 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue14 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 60;
                                                                } else if (((_model.radioButtonValue14 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue14 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 80;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController14 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'mmy0mucw' /* OUESTION 5: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '43n1ykgx' /* Does the child have significan... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '7djnkvje' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'obovhpzh' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q35 = () {
                                                                if (((_model.radioButtonValue15 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue15 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue15 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue15 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 60;
                                                                } else if (((_model.radioButtonValue15 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue15 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 80;
                                                                } else if (((_model.radioButtonValue15 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue15 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 100;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController15 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 20.0, 10.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 530.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().dropdown4section4 =
                                        !(FFAppState().dropdown4section4 ??
                                            true);
                                    safeSetState(() {});
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.asset(
                                            'assets/images/book.png',
                                            width: 50.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 15.0, 0.0, 15.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'g80ey80w' /* General Clumsiness */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 15.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          borderRadius: 22.0,
                                          borderWidth: 2.0,
                                          buttonSize: 40.0,
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            FFAppState().dropdown4section4 =
                                                !(FFAppState()
                                                        .dropdown4section4 ??
                                                    true);
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (FFAppState().dropdown4section4)
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Form(
                                      key: _model.formKey3,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ubmqhn3x' /* OUESTION 1: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '6h0jpvyl' /* Does the child have general cl... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'zw919wzs' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'geyqgc8z' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q41 = () {
                                                                if (((_model.radioButtonValue16 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue16 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue16 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue16 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 60;
                                                                } else if (((_model.radioButtonValue16 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue16 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 80;
                                                                } else if (((_model.radioButtonValue16 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue16 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 100;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController16 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '6v9h9mby' /* OUESTION 2: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '0vis1ub2' /* Does the child have consistent... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '99htk2bl' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '9nslhz8p' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q42 = () {
                                                                if (((_model.radioButtonValue17 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue17 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue17 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue17 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 60;
                                                                } else if (((_model.radioButtonValue17 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue17 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 80;
                                                                } else if (((_model.radioButtonValue17 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue17 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 100;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController17 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '4o3rrmps' /* OUESTION 3: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'uojqyeaw' /* Does the child have considerab... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'pmsa7mhv' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'dei8phzf' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q43 = () {
                                                                if (((_model.radioButtonValue18 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue18 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 20;
                                                                } else if (((_model.radioButtonValue18 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue18 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue18 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue18 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 60;
                                                                } else if (((_model.radioButtonValue18 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue18 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 80;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController18 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '1k6klr1z' /* OUESTION 4: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'pwq1a8v5' /* Does the child fit in the peer... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'n1zb120z' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'n2rd8512' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q44 = () {
                                                                if (((_model.radioButtonValue19 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue19 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 20;
                                                                } else if (((_model.radioButtonValue19 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue19 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue19 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue19 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 60;
                                                                } else if (((_model.radioButtonValue19 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue19 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 80;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController19 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 10.0, 5.0, 10.0),
                                            child: Container(
                                              width: 360.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                  bottomLeft:
                                                      Radius.circular(24.0),
                                                  bottomRight:
                                                      Radius.circular(24.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 3.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '1tkulq0u' /* OUESTION 5: */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF39D2C0),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Divider(
                                                          height: 16.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor65,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'i6kvutq4' /* Does the child have positive s... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .outfit(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowRadioButton(
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'r1t0hcjn' /* Yes */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'e3r6m509' /* No */,
                                                              )
                                                            ].toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(
                                                                  () {});
                                                              _model.q45 = () {
                                                                if (((_model.radioButtonValue20 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue20 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '1')) {
                                                                  return 10;
                                                                } else if (((_model.radioButtonValue20 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue20 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '2')) {
                                                                  return 20;
                                                                } else if (((_model.radioButtonValue20 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue20 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '3')) {
                                                                  return 40;
                                                                } else if (((_model.radioButtonValue20 ==
                                                                            'Yes') ||
                                                                        (_model.radioButtonValue20 ==
                                                                            'ಹೌದು')) &&
                                                                    (widget.grade ==
                                                                        '4')) {
                                                                  return 60;
                                                                } else {
                                                                  return 0;
                                                                }
                                                              }();
                                                            },
                                                            controller: _model
                                                                    .radioButtonValueController20 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            optionHeight: 32.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            selectedTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            buttonPosition:
                                                                RadioButtonPosition
                                                                    .left,
                                                            direction:
                                                                Axis.vertical,
                                                            radioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            inactiveRadioButtonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            toggleable: false,
                                                            horizontalAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
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
                            0.0, 20.0, 0.0, 15.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            if ((_model.radioButtonValue6 == 'No') &&
                                (_model.radioButtonValue7 == 'No') &&
                                (_model.radioButtonValue8 == 'No') &&
                                (_model.radioButtonValue9 == 'No') &&
                                ((_model.radioButtonValue1 == 'No') &&
                                    (_model.radioButtonValue2 == 'No') &&
                                    (_model.radioButtonValue3 == 'No') &&
                                    (_model.radioButtonValue4 == 'No'))) {
                              return ((_model.radioButtonValue1 == null ||
                                      _model.radioButtonValue1 == '') ||
                                  (_model.radioButtonValue2 == null ||
                                      _model.radioButtonValue2 == '') ||
                                  (_model.radioButtonValue3 == null ||
                                      _model.radioButtonValue3 == '') ||
                                  (_model.radioButtonValue4 == null ||
                                      _model.radioButtonValue4 == '') ||
                                  (_model.radioButtonValue6 == null ||
                                      _model.radioButtonValue6 == '') ||
                                  (_model.radioButtonValue7 == null ||
                                      _model.radioButtonValue7 == '') ||
                                  (_model.radioButtonValue8 == null ||
                                      _model.radioButtonValue8 == '') ||
                                  (_model.radioButtonValue9 == null ||
                                      _model.radioButtonValue9 == '') ||
                                  (_model.radioButtonValue11 == null ||
                                      _model.radioButtonValue11 == '') ||
                                  (_model.radioButtonValue12 == null ||
                                      _model.radioButtonValue12 == '') ||
                                  (_model.radioButtonValue13 == null ||
                                      _model.radioButtonValue13 == '') ||
                                  (_model.radioButtonValue14 == null ||
                                      _model.radioButtonValue14 == '') ||
                                  (_model.radioButtonValue15 == null ||
                                      _model.radioButtonValue15 == '') ||
                                  (_model.radioButtonValue16 == null ||
                                      _model.radioButtonValue16 == '') ||
                                  (_model.radioButtonValue17 == null ||
                                      _model.radioButtonValue17 == '') ||
                                  (_model.radioButtonValue18 == null ||
                                      _model.radioButtonValue18 == '') ||
                                  (_model.radioButtonValue19 == null ||
                                      _model.radioButtonValue19 == '') ||
                                  (_model.radioButtonValue20 == null ||
                                      _model.radioButtonValue20 == ''));
                            } else if ((_model.radioButtonValue1 == 'No') &&
                                (_model.radioButtonValue2 == 'No') &&
                                (_model.radioButtonValue3 == 'No') &&
                                (_model.radioButtonValue4 == 'No')) {
                              return ((_model.radioButtonValue1 == null ||
                                      _model.radioButtonValue1 == '') ||
                                  (_model.radioButtonValue2 == null ||
                                      _model.radioButtonValue2 == '') ||
                                  (_model.radioButtonValue3 == null ||
                                      _model.radioButtonValue3 == '') ||
                                  (_model.radioButtonValue4 == null ||
                                      _model.radioButtonValue4 == '') ||
                                  (_model.radioButtonValue6 == null ||
                                      _model.radioButtonValue6 == '') ||
                                  (_model.radioButtonValue7 == null ||
                                      _model.radioButtonValue7 == '') ||
                                  (_model.radioButtonValue8 == null ||
                                      _model.radioButtonValue8 == '') ||
                                  (_model.radioButtonValue9 == null ||
                                      _model.radioButtonValue9 == '') ||
                                  (_model.radioButtonValue10 == null ||
                                      _model.radioButtonValue10 == '') ||
                                  (_model.radioButtonValue11 == null ||
                                      _model.radioButtonValue11 == '') ||
                                  (_model.radioButtonValue12 == null ||
                                      _model.radioButtonValue12 == '') ||
                                  (_model.radioButtonValue13 == null ||
                                      _model.radioButtonValue13 == '') ||
                                  (_model.radioButtonValue14 == null ||
                                      _model.radioButtonValue14 == '') ||
                                  (_model.radioButtonValue15 == null ||
                                      _model.radioButtonValue15 == '') ||
                                  (_model.radioButtonValue16 == null ||
                                      _model.radioButtonValue16 == '') ||
                                  (_model.radioButtonValue17 == null ||
                                      _model.radioButtonValue17 == '') ||
                                  (_model.radioButtonValue18 == null ||
                                      _model.radioButtonValue18 == '') ||
                                  (_model.radioButtonValue19 == null ||
                                      _model.radioButtonValue19 == '') ||
                                  (_model.radioButtonValue20 == null ||
                                      _model.radioButtonValue20 == ''));
                            } else if ((_model.radioButtonValue6 == 'No') &&
                                (_model.radioButtonValue7 == 'No') &&
                                (_model.radioButtonValue8 == 'No') &&
                                (_model.radioButtonValue9 == 'No')) {
                              return ((_model.radioButtonValue1 == null ||
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
                                      _model.radioButtonValue7 == '') ||
                                  (_model.radioButtonValue8 == null ||
                                      _model.radioButtonValue8 == '') ||
                                  (_model.radioButtonValue9 == null ||
                                      _model.radioButtonValue9 == '') ||
                                  (_model.radioButtonValue11 == null ||
                                      _model.radioButtonValue11 == '') ||
                                  (_model.radioButtonValue12 == null ||
                                      _model.radioButtonValue12 == '') ||
                                  (_model.radioButtonValue13 == null ||
                                      _model.radioButtonValue13 == '') ||
                                  (_model.radioButtonValue14 == null ||
                                      _model.radioButtonValue14 == '') ||
                                  (_model.radioButtonValue15 == null ||
                                      _model.radioButtonValue15 == '') ||
                                  (_model.radioButtonValue16 == null ||
                                      _model.radioButtonValue16 == '') ||
                                  (_model.radioButtonValue17 == null ||
                                      _model.radioButtonValue17 == '') ||
                                  (_model.radioButtonValue18 == null ||
                                      _model.radioButtonValue18 == '') ||
                                  (_model.radioButtonValue19 == null ||
                                      _model.radioButtonValue19 == '') ||
                                  (_model.radioButtonValue20 == null ||
                                      _model.radioButtonValue20 == ''));
                            } else {
                              return false;
                            }
                          }()
                              ? null
                              : () async {
                                  var confirmDialogResponse = await showDialog<
                                          bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text(
                                                FFLocalizations.of(context)
                                                            .languageCode ==
                                                        'kn'
                                                    ? 'ದೃಢೀಕರಣವನ್ನು ಸಲ್ಲಿಸಿ'
                                                    : 'Submit Confirmation'),
                                            content: Text(FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn'
                                                ? 'ನೀವು ಸಲ್ಲಿಸಲು ಖಚಿತವಾಗಿ ಬಯಸುವಿರಾ?'
                                                : 'Are you sure you want to submit?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: Text(
                                                    FFLocalizations.of(context)
                                                                .languageCode ==
                                                            'kn'
                                                        ? 'ರದ್ದುಮಾಡು'
                                                        : 'Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: Text(
                                                    FFLocalizations.of(context)
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
                                    await Section4Record.collection
                                        .doc()
                                        .set(createSection4RecordData(
                                          s4s1q1: () {
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
                                            } else {
                                              return _model.radioButtonValue1;
                                            }
                                          }(),
                                          s4s1q2: () {
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
                                            } else {
                                              return _model.radioButtonValue2;
                                            }
                                          }(),
                                          s4s1q3: () {
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
                                          s4s1q4: () {
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
                                            } else {
                                              return _model.radioButtonValue4;
                                            }
                                          }(),
                                          s4s1q5: _model.radioButtonValue5 !=
                                                      null &&
                                                  _model.radioButtonValue5 != ''
                                              ? () {
                                                  if ((_model.radioButtonValue5 ==
                                                          'ಕನ್ನಡ') &&
                                                      (FFLocalizations.of(
                                                                  context)
                                                              .languageCode ==
                                                          'kn')) {
                                                    return 'Kannada';
                                                  } else if ((_model
                                                              .radioButtonValue5 ==
                                                          'ಆಂಗ್ಲ') &&
                                                      (FFLocalizations.of(
                                                                  context)
                                                              .languageCode ==
                                                          'kn')) {
                                                    return 'English';
                                                  } else if ((_model
                                                              .radioButtonValue5 ==
                                                          'ಇತರ') &&
                                                      (FFLocalizations.of(
                                                                  context)
                                                              .languageCode ==
                                                          'kn')) {
                                                    return 'Any other';
                                                  } else {
                                                    return _model
                                                        .radioButtonValue5;
                                                  }
                                                }()
                                              : 'Not Needed',
                                          s4s2q1: () {
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
                                            } else {
                                              return _model.radioButtonValue6;
                                            }
                                          }(),
                                          s4s2q2: () {
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
                                            } else {
                                              return _model.radioButtonValue7;
                                            }
                                          }(),
                                          s4s2q3: () {
                                            if ((_model.radioButtonValue8 ==
                                                    'ಹೌದು') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'Yes';
                                            } else if ((_model
                                                        .radioButtonValue8 ==
                                                    'ಇಲ್ಲ') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'No';
                                            } else {
                                              return _model.radioButtonValue8;
                                            }
                                          }(),
                                          s4s2q4: () {
                                            if ((_model.radioButtonValue9 ==
                                                    'ಹೌದು') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'Yes';
                                            } else if ((_model
                                                        .radioButtonValue9 ==
                                                    'ಇಲ್ಲ') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'No';
                                            } else {
                                              return _model.radioButtonValue9;
                                            }
                                          }(),
                                          s4s2q5: _model.radioButtonValue10 !=
                                                      null &&
                                                  _model.radioButtonValue10 !=
                                                      ''
                                              ? () {
                                                  if ((_model.radioButtonValue10 ==
                                                          'ಕನ್ನಡ') &&
                                                      (FFLocalizations.of(
                                                                  context)
                                                              .languageCode ==
                                                          'kn')) {
                                                    return 'Kannada';
                                                  } else if ((_model
                                                              .radioButtonValue10 ==
                                                          'ಆಂಗ್ಲ') &&
                                                      (FFLocalizations.of(
                                                                  context)
                                                              .languageCode ==
                                                          'kn')) {
                                                    return 'English';
                                                  } else if ((_model
                                                              .radioButtonValue10 ==
                                                          'ಇತರ') &&
                                                      (FFLocalizations.of(
                                                                  context)
                                                              .languageCode ==
                                                          'kn')) {
                                                    return 'Any other';
                                                  } else {
                                                    return _model
                                                        .radioButtonValue10;
                                                  }
                                                }()
                                              : 'Not Needed',
                                          s4s3q1: () {
                                            if ((_model.radioButtonValue11 ==
                                                    'ಹೌದು') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'Yes';
                                            } else if ((_model
                                                        .radioButtonValue11 ==
                                                    'ಇಲ್ಲ') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'No';
                                            } else {
                                              return _model.radioButtonValue11;
                                            }
                                          }(),
                                          s4s3q2: () {
                                            if ((_model.radioButtonValue12 ==
                                                    'ಹೌದು') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'Yes';
                                            } else if ((_model
                                                        .radioButtonValue12 ==
                                                    'ಇಲ್ಲ') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'No';
                                            } else {
                                              return _model.radioButtonValue12;
                                            }
                                          }(),
                                          s4s3q3: () {
                                            if ((_model.radioButtonValue13 ==
                                                    'ಹೌದು') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'Yes';
                                            } else if ((_model
                                                        .radioButtonValue13 ==
                                                    'ಇಲ್ಲ') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'No';
                                            } else {
                                              return _model.radioButtonValue13;
                                            }
                                          }(),
                                          s4s3q4: () {
                                            if ((_model.radioButtonValue14 ==
                                                    'ಹೌದು') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'Yes';
                                            } else if ((_model
                                                        .radioButtonValue14 ==
                                                    'ಇಲ್ಲ') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'No';
                                            } else {
                                              return _model.radioButtonValue14;
                                            }
                                          }(),
                                          s4s3q5: () {
                                            if ((_model.radioButtonValue15 ==
                                                    'ಹೌದು') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'Yes';
                                            } else if ((_model
                                                        .radioButtonValue15 ==
                                                    'ಇಲ್ಲ') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'No';
                                            } else {
                                              return _model.radioButtonValue15;
                                            }
                                          }(),
                                          s4s4q1: () {
                                            if ((_model.radioButtonValue16 ==
                                                    'ಹೌದು') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'Yes';
                                            } else if ((_model
                                                        .radioButtonValue16 ==
                                                    'ಇಲ್ಲ') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'No';
                                            } else {
                                              return _model.radioButtonValue16;
                                            }
                                          }(),
                                          s4s4q2: () {
                                            if ((_model.radioButtonValue17 ==
                                                    'ಹೌದು') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'Yes';
                                            } else if ((_model
                                                        .radioButtonValue17 ==
                                                    'ಇಲ್ಲ') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'No';
                                            } else {
                                              return _model.radioButtonValue17;
                                            }
                                          }(),
                                          s4s4q3: () {
                                            if ((_model.radioButtonValue18 ==
                                                    'ಹೌದು') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'Yes';
                                            } else if ((_model
                                                        .radioButtonValue18 ==
                                                    'ಇಲ್ಲ') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'No';
                                            } else {
                                              return _model.radioButtonValue18;
                                            }
                                          }(),
                                          s4s4q4: () {
                                            if ((_model.radioButtonValue19 ==
                                                    'ಹೌದು') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'Yes';
                                            } else if ((_model
                                                        .radioButtonValue19 ==
                                                    'ಇಲ್ಲ') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'No';
                                            } else {
                                              return _model.radioButtonValue19;
                                            }
                                          }(),
                                          s4s4q5: () {
                                            if ((_model.radioButtonValue20 ==
                                                    'ಹೌದು') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'Yes';
                                            } else if ((_model
                                                        .radioButtonValue20 ==
                                                    'ಇಲ್ಲ') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn')) {
                                              return 'No';
                                            } else {
                                              return _model.radioButtonValue20;
                                            }
                                          }(),
                                          cid: section4ChildDataRecord
                                              ?.reference,
                                          uid: currentUserReference,
                                          s4s1q1k: () {
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
                                            } else {
                                              return _model.radioButtonValue1;
                                            }
                                          }(),
                                          s4s1q2k: () {
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
                                            } else {
                                              return _model.radioButtonValue2;
                                            }
                                          }(),
                                          s4s1q4k: () {
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
                                            } else {
                                              return _model.radioButtonValue4;
                                            }
                                          }(),
                                          s4s1q3k: () {
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
                                          s4s1q5k: _model.radioButtonValue5 !=
                                                      null &&
                                                  _model.radioButtonValue5 != ''
                                              ? () {
                                                  if ((_model.radioButtonValue5 ==
                                                          'Kannada') &&
                                                      (FFLocalizations.of(
                                                                  context)
                                                              .languageCode ==
                                                          'en')) {
                                                    return 'ಕನ್ನಡ';
                                                  } else if ((_model
                                                              .radioButtonValue5 ==
                                                          'English') &&
                                                      (FFLocalizations.of(
                                                                  context)
                                                              .languageCode ==
                                                          'en')) {
                                                    return 'ಆಂಗ್ಲ';
                                                  } else if ((_model
                                                              .radioButtonValue5 ==
                                                          'Other Language') &&
                                                      (FFLocalizations.of(
                                                                  context)
                                                              .languageCode ==
                                                          'en')) {
                                                    return 'ಇತರ';
                                                  } else {
                                                    return _model
                                                        .radioButtonValue5;
                                                  }
                                                }()
                                              : 'ಅಗತ್ಯವಿಲ್ಲ',
                                          s4s2q1k: () {
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
                                            } else {
                                              return _model.radioButtonValue6;
                                            }
                                          }(),
                                          s4s2q2k: () {
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
                                            } else {
                                              return _model.radioButtonValue7;
                                            }
                                          }(),
                                          s4s2q3k: () {
                                            if ((_model.radioButtonValue8 ==
                                                    'Yes') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಹೌದು';
                                            } else if ((_model
                                                        .radioButtonValue8 ==
                                                    'No') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಇಲ್ಲ';
                                            } else {
                                              return _model.radioButtonValue8;
                                            }
                                          }(),
                                          s4s2q4k: () {
                                            if ((_model.radioButtonValue9 ==
                                                    'Yes') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಹೌದು';
                                            } else if ((_model
                                                        .radioButtonValue9 ==
                                                    'No') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಇಲ್ಲ';
                                            } else {
                                              return _model.radioButtonValue9;
                                            }
                                          }(),
                                          s4s2q5k: _model.radioButtonValue10 !=
                                                      null &&
                                                  _model.radioButtonValue10 !=
                                                      ''
                                              ? () {
                                                  if ((_model.radioButtonValue10 ==
                                                          'Kannada') &&
                                                      (FFLocalizations.of(
                                                                  context)
                                                              .languageCode ==
                                                          'en')) {
                                                    return 'ಕನ್ನಡ';
                                                  } else if ((_model
                                                              .radioButtonValue10 ==
                                                          'English') &&
                                                      (FFLocalizations.of(
                                                                  context)
                                                              .languageCode ==
                                                          'en')) {
                                                    return 'ಆಂಗ್ಲ';
                                                  } else if ((_model
                                                              .radioButtonValue10 ==
                                                          'Other Language') &&
                                                      (FFLocalizations.of(
                                                                  context)
                                                              .languageCode ==
                                                          'en')) {
                                                    return 'ಇತರ';
                                                  } else {
                                                    return _model
                                                        .radioButtonValue10;
                                                  }
                                                }()
                                              : 'ಅಗತ್ಯವಿಲ್ಲ',
                                          s4s3q1k: () {
                                            if ((_model.radioButtonValue11 ==
                                                    'Yes') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಹೌದು';
                                            } else if ((_model
                                                        .radioButtonValue11 ==
                                                    'No') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಇಲ್ಲ';
                                            } else {
                                              return _model.radioButtonValue11;
                                            }
                                          }(),
                                          s4s3q2k: () {
                                            if ((_model.radioButtonValue12 ==
                                                    'Yes') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಹೌದು';
                                            } else if ((_model
                                                        .radioButtonValue12 ==
                                                    'No') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಇಲ್ಲ';
                                            } else {
                                              return _model.radioButtonValue12;
                                            }
                                          }(),
                                          s4s3q3k: () {
                                            if ((_model.radioButtonValue13 ==
                                                    'Yes') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಹೌದು';
                                            } else if ((_model
                                                        .radioButtonValue13 ==
                                                    'No') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಇಲ್ಲ';
                                            } else {
                                              return _model.radioButtonValue13;
                                            }
                                          }(),
                                          s4s3q4k: () {
                                            if ((_model.radioButtonValue14 ==
                                                    'Yes') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಹೌದು';
                                            } else if ((_model
                                                        .radioButtonValue14 ==
                                                    'No') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಇಲ್ಲ';
                                            } else {
                                              return _model.radioButtonValue14;
                                            }
                                          }(),
                                          s4s3q5k: () {
                                            if ((_model.radioButtonValue15 ==
                                                    'Yes') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಹೌದು';
                                            } else if ((_model
                                                        .radioButtonValue15 ==
                                                    'No') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಇಲ್ಲ';
                                            } else {
                                              return _model.radioButtonValue15;
                                            }
                                          }(),
                                          s4s4q1k: () {
                                            if ((_model.radioButtonValue16 ==
                                                    'Yes') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಹೌದು';
                                            } else if ((_model
                                                        .radioButtonValue16 ==
                                                    'No') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಇಲ್ಲ';
                                            } else {
                                              return _model.radioButtonValue16;
                                            }
                                          }(),
                                          s4s4q2k: () {
                                            if ((_model.radioButtonValue17 ==
                                                    'Yes') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಹೌದು';
                                            } else if ((_model
                                                        .radioButtonValue17 ==
                                                    'No') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಇಲ್ಲ';
                                            } else {
                                              return _model.radioButtonValue17;
                                            }
                                          }(),
                                          s4s4q3k: () {
                                            if ((_model.radioButtonValue18 ==
                                                    'Yes') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಹೌದು';
                                            } else if ((_model
                                                        .radioButtonValue18 ==
                                                    'No') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಇಲ್ಲ';
                                            } else {
                                              return _model.radioButtonValue18;
                                            }
                                          }(),
                                          s4s4q4k: () {
                                            if ((_model.radioButtonValue19 ==
                                                    'Yes') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಹೌದು';
                                            } else if ((_model
                                                        .radioButtonValue19 ==
                                                    'No') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಇಲ್ಲ';
                                            } else {
                                              return _model.radioButtonValue19;
                                            }
                                          }(),
                                          s4s4q5k: () {
                                            if ((_model.radioButtonValue20 ==
                                                    'Yes') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಹೌದು';
                                            } else if ((_model
                                                        .radioButtonValue20 ==
                                                    'No') &&
                                                (FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'en')) {
                                              return 'ಇಲ್ಲ';
                                            } else {
                                              return _model.radioButtonValue20;
                                            }
                                          }(),
                                        ));

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'screening_count':
                                              FieldValue.increment(1),
                                        },
                                      ),
                                    });
                                    FFAppState().s4evalReading = (((_model
                                                            .radioButtonValue1 ==
                                                        'No') ||
                                                    (_model.radioButtonValue1 ==
                                                        'ಇಲ್ಲ')) &&
                                                ((_model.radioButtonValue2 ==
                                                        'No') ||
                                                    (_model.radioButtonValue2 ==
                                                        'ಇಲ್ಲ')) &&
                                                ((_model.radioButtonValue3 ==
                                                        'No') ||
                                                    (_model.radioButtonValue3 ==
                                                        'ಇಲ್ಲ')) &&
                                                ((_model.radioButtonValue4 ==
                                                        'No') ||
                                                    (_model.radioButtonValue4 ==
                                                        'ಇಲ್ಲ'))
                                            ? true
                                            : false)
                                        ? (_model.q11 +
                                            _model.q12 +
                                            _model.q13 +
                                            _model.q14)
                                        : (_model.q11 +
                                            _model.q12 +
                                            _model.q13 +
                                            _model.q14 +
                                            _model.q15);
                                    FFAppState().t4 = _model.timerMilliseconds;
                                    FFAppState().s23eval =
                                        (0.25 * FFAppState().s2eval) +
                                            (0.75 * FFAppState().s3eval);
                                    FFAppState().s4evalWritng =
                                        ((_model.radioButtonValue6 == 'No') ||
                                                    (_model.radioButtonValue6 ==
                                                        'ಇಲ್ಲ')) &&
                                                ((_model.radioButtonValue7 ==
                                                        'No') ||
                                                    (_model.radioButtonValue7 ==
                                                        'ಇಲ್ಲ')) &&
                                                ((_model.radioButtonValue8 ==
                                                        'No') ||
                                                    (_model.radioButtonValue8 ==
                                                        'ಇಲ್ಲ')) &&
                                                ((_model.radioButtonValue9 ==
                                                        'No') ||
                                                    (_model.radioButtonValue9 ==
                                                        'ಇಲ್ಲ'))
                                            ? (_model.q21 +
                                                _model.q22 +
                                                _model.q23 +
                                                _model.q24)
                                            : (_model.q21 +
                                                _model.q22 +
                                                _model.q23 +
                                                _model.q24 +
                                                _model.q25);
                                    FFAppState().s4evalMath = _model.q31 +
                                        _model.q32 +
                                        _model.q33 +
                                        _model.q34 +
                                        _model.q35;
                                    FFAppState().s4evalGeneral = _model.q41 +
                                        _model.q42 +
                                        _model.q43 +
                                        _model.q44 +
                                        _model.q45;
                                    FFAppState().s4Combined = _model.q11 +
                                        _model.q12 +
                                        _model.q13 +
                                        _model.q14 +
                                        _model.q15 +
                                        _model.q21 +
                                        _model.q22 +
                                        _model.q23 +
                                        _model.q24 +
                                        _model.q25 +
                                        _model.q31 +
                                        _model.q32 +
                                        _model.q33 +
                                        _model.q34 +
                                        _model.q35 +
                                        _model.q41 +
                                        _model.q42 +
                                        _model.q43 +
                                        _model.q44 +
                                        _model.q45;
                                    FFAppState().dropdown1section4 = false;
                                    FFAppState().dropdown2section4 = false;
                                    FFAppState().dropdown3section4 = false;
                                    FFAppState().dropdown4section4 = false;
                                    FFAppState().demo = _model.q21 +
                                        _model.q22 +
                                        _model.q23 +
                                        _model.q24 +
                                        _model.q25;

                                    await TimeDataRecord.collection
                                        .doc()
                                        .set(createTimeDataRecordData(
                                          timestamp: getCurrentTimestamp,
                                          uid: currentUserReference,
                                          cid: section4ChildDataRecord
                                              ?.reference,
                                          timerTaken: functions.timerformat(
                                              FFAppState().t1,
                                              FFAppState().t2,
                                              FFAppState().t3,
                                              FFAppState().t4),
                                        ));
                                    FFAppState().nonSpecificIndicator = () {
                                      if ((FFAppState().s23eval >= 7.5) &&
                                          (FFAppState().s23eval < 25.25)) {
                                        return 'low';
                                      } else if ((FFAppState().s23eval >=
                                              25.25) &&
                                          (FFAppState().s23eval < 50.25)) {
                                        return 'moderate';
                                      } else {
                                        return 'high';
                                      }
                                    }();
                                    FFAppState().specificIndicator = () {
                                      if (() {
                                        if ((FFAppState().s4evalReading >=
                                                261) &&
                                            (FFAppState().s4evalReading <=
                                                380)) {
                                          return true;
                                        } else if ((FFAppState().s4evalWritng >=
                                                261) &&
                                            (FFAppState().s4evalWritng <=
                                                380)) {
                                          return true;
                                        } else if ((FFAppState().s4evalMath >=
                                                181) &&
                                            (FFAppState().s4evalMath <= 300)) {
                                          return true;
                                        } else if ((FFAppState()
                                                    .s4evalGeneral >=
                                                361) &&
                                            (FFAppState().s4evalGeneral <=
                                                420)) {
                                          return true;
                                        } else {
                                          return false;
                                        }
                                      }()) {
                                        return 'high';
                                      } else if ((FFAppState().s4Combined >=
                                              0) &&
                                          (FFAppState().s4Combined <= 510)) {
                                        return 'low';
                                      } else if ((FFAppState().s4Combined >=
                                              511) &&
                                          (FFAppState().s4Combined <= 1060)) {
                                        return 'moderate';
                                      } else {
                                        return 'high';
                                      }
                                    }();

                                    await ResultRecord.collection
                                        .doc()
                                        .set(createResultRecordData(
                                          nonSpecificIndicator:
                                              FFAppState().nonSpecificIndicator,
                                          specificIndicator:
                                              FFAppState().specificIndicator,
                                          recommendation: () {
                                            if ((FFAppState().nonSpecificIndicator == 'high') &&
                                                (FFAppState().specificIndicator ==
                                                    'high')) {
                                              return 'Immediately refer for overall diagnostic assessment and planning management at the nearest/convenient Child and adolescent mental health Centre';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'high') &&
                                                (FFAppState().specificIndicator ==
                                                    'moderate')) {
                                              return 'Monitor closely and frequently preferably with one-to-one basis in this semester, consider referring for urgent diagnostic assessment at the earliest/within this semester. Regular screening in every school mental health camp';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'high') &&
                                                (FFAppState().specificIndicator ==
                                                    'low')) {
                                              return 'Refer for a repeat SLD screening after this semester and consider diagnostic assessment later. Consider exposure and one-to-one remedial classes starting from a lower grade in the areas of deficit. Priority screening at School mental health camps';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'moderate') &&
                                                (FFAppState().specificIndicator ==
                                                    'high')) {
                                              return 'Prioritize and refer for diagnostic assessment at the earliest/within this semester at the nearest/convenient Child and adolescent mental health Centre. Monitor closely and frequently on one-to-one basis. Priority screening at school mental health camps';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'moderate') &&
                                                (FFAppState().specificIndicator ==
                                                    'moderate')) {
                                              return 'Monitor closely and frequently preferably with one-to-one basis in this academic year, consider referring for diagnostic assessment within this academic year. At-risk screening may be repeated before referral.  Periodic screening in school mental health camps';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'moderate') &&
                                                (FFAppState().specificIndicator ==
                                                    'low')) {
                                              return 'Identify the areas of deficit and exposure to the same with remedial classes with less student teacher ratio, preferably one-to-one monitoring.  Periodic screening in school mental health camps Repeat screening at the academic year end';
                                            } else if ((FFAppState().nonSpecificIndicator == 'low') &&
                                                (FFAppState().specificIndicator ==
                                                    'high')) {
                                              return 'Monitor closely and frequently on one-to-one basis. Consider referring for diagnostic assessment at the earliest/within this semester';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'low') &&
                                                (FFAppState().specificIndicator ==
                                                    'moderate')) {
                                              return 'Monitor closely and frequently preferably with one-to-one basis in this academic year. Repeat SLD screening at the end of the academic year';
                                            } else {
                                              return 'Repeat SLD screening at academic year end. Monitor the academic progress closely. At least one screening in upcoming school mental health camp';
                                            }
                                          }(),
                                          uid: currentUserReference,
                                          cid: section4ChildDataRecord
                                              ?.reference,
                                          timestamp: getCurrentTimestamp,
                                          childName: section4ChildDataRecord
                                              ?.childName,
                                          principalReference:
                                              currentUserReference,
                                          colorcode: () {
                                            if ((FFAppState().nonSpecificIndicator == 'high') &&
                                                (FFAppState().specificIndicator ==
                                                    'high')) {
                                              return '#C00000';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'high') &&
                                                (FFAppState().specificIndicator ==
                                                    'moderate')) {
                                              return '#FF0000';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'high') &&
                                                (FFAppState().specificIndicator ==
                                                    'low')) {
                                              return '#FFC000';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'moderate') &&
                                                (FFAppState().specificIndicator ==
                                                    'high')) {
                                              return '#FF0000';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'moderate') &&
                                                (FFAppState().specificIndicator ==
                                                    'moderate')) {
                                              return '#FFC000';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'moderate') &&
                                                (FFAppState().specificIndicator ==
                                                    'low')) {
                                              return '#FFFF00';
                                            } else if ((FFAppState().nonSpecificIndicator == 'low') &&
                                                (FFAppState().specificIndicator ==
                                                    'high')) {
                                              return '#FF0000';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'low') &&
                                                (FFAppState().specificIndicator ==
                                                    'moderate')) {
                                              return '#FFC000';
                                            } else {
                                              return '#92D050';
                                            }
                                          }(),
                                          recommendationk: () {
                                            if ((FFAppState().nonSpecificIndicator == 'high') &&
                                                (FFAppState().specificIndicator ==
                                                    'high')) {
                                              return 'ತಕ್ಷಣವೇ ಹತ್ತಿರದ/ಅನುಕೂಲವಾದ ಮಕ್ಕಳ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಕೇಂದ್ರದಲ್ಲಿ ವಿಸ್ತೃತ ತಪಾಸಣೆ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಕಳುಹಿಸಿ.';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'high') &&
                                                (FFAppState().specificIndicator ==
                                                    'moderate')) {
                                              return 'ಈ ವರ್ಷಾರ್ಧದಲ್ಲಿ ಮಗುವಿನ ಕಲಿಕೆಯನ್ನು ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ ಮತ್ತು ಆಗಾಗ್ಗೆ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ, ಮಕ್ಕಳ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಕೇಂದ್ರದಲ್ಲಿ ವಿಸ್ತೃತ ತಪಾಸಣೆ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಆದಷ್ಟು ಬೇಗ/ಈ ವರ್ಷಾರ್ಧದಲ್ಲಿಯೇ ಪರಿಗಣಿಸಿ. ಮುಂದಿನ ಪ್ರತಿ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರದಲ್ಲಿ ಆದ್ಯತೆಯ ತಪಾಸಣೆ.';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'high') &&
                                                (FFAppState().specificIndicator ==
                                                    'low')) {
                                              return 'ಈ ವರ್ಷಾರ್ಧದ ನಂತರ ಪುನರಾವರ್ತಿತ SLD ಸ್ಕ್ರೀನಿಂಗ್ ಅನ್ನು ಮಾಡಿ ಮತ್ತು ನಂತರ ಮಕ್ಕಳ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಕೇಂದ್ರದಲ್ಲಿ ವಿಸ್ತೃತ ತಪಾಸಣೆ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಪರಿಗಣಿಸಿ.  ಕಲಿಕಾ ನ್ಯೂನತೆಯ ವಿಷಯಗಳನ್ನು ಗುರುತಿಸಿ, ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ, ಪಾರಿಹಾರಿಕ ತರಗತಿಗಳೊಂದಿಗೆ ಕೆಳಹಂತದ/ಪ್ರಾಥಮಿಕ ಪಾಠಗಳಿಂದ ಪುನರಾವರ್ತಿಸಲು ಪರಿಗಣಿಸಿ. ಮುಂದಿನ ಪ್ರತಿ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಆದ್ಯತೆಯ ತಪಾಸಣೆ.';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'moderate') &&
                                                (FFAppState().specificIndicator ==
                                                    'high')) {
                                              return 'ಹತ್ತಿರದ/ಅನುಕೂಲವಾದ ಮಕ್ಕಳ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಕೇಂದ್ರದಲ್ಲಿ ವಿಸ್ತೃತ ತಪಾಸಣೆ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಆದಷ್ಟು ಬೇಗ/ಈ ವರ್ಷಾರ್ಧದಲ್ಲಿಯೇ ಆದ್ಯತೆಯ ಮೇರೆಗೆ ಕಳುಹಿಸಿ. ಮಗುವಿನ ಕಲಿಕೆಯನ್ನು ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ ಮತ್ತು ಆಗಾಗ್ಗೆ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ, ಮುಂದಿನ ಪ್ರತಿ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಆದ್ಯತೆಯ ತಪಾಸಣೆ.';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'moderate') &&
                                                (FFAppState().specificIndicator ==
                                                    'moderate')) {
                                              return 'ಈ ಶೈಕ್ಷಣಿಕ ವರ್ಷದಲ್ಲಿ ಮಗುವಿನ ಕಲಿಕೆಯನ್ನು ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ ಮತ್ತು ಆಗಾಗ್ಗೆ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ.  ಮಕ್ಕಳ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಕೇಂದ್ರದಲ್ಲಿ ವಿಸ್ತೃತ ತಪಾಸಣೆ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಪರಿಗಣಿಸಿ. ಕಳುಹಿಸಲು ಮುನ್ನ ಶಾಲೆಯಲ್ಲಿ ಈ ಸ್ಕ್ರೀನಿಂಗ್ ಅನ್ನು ಪುನರಾವರ್ತಿಸಬಹುದು ಮುಂದಿನ ಪ್ರತಿ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಆಗಾಗ್ಗೆ ತಪಾಸಣೆ.';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'moderate') &&
                                                (FFAppState().specificIndicator ==
                                                    'low')) {
                                              return 'ಕಡಿಮೆ ವಿದ್ಯಾರ್ಥಿ ಶಿಕ್ಷಕರ ಅನುಪಾತದೊಂದಿಗೆ ಪಾರಿಹಾರಿಕ ತರಗತಿಗಳೊಂದಿಗೆ ಕಲಿಕಾ ನ್ಯೂನತೆಯ ವಿಷಯಗಳಲ್ಲಿ ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ. ಮುಂದಿನ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಆಗಾಗ್ಗೆ ತಪಾಸಣೆ ಶೈಕ್ಷಣಿಕ ವರ್ಷದ ಕೊನೆಯಲ್ಲಿ SLD ಸ್ಕ್ರೀನಿಂಗ್ ಅನ್ನು ಪುನರಾವರ್ತಿಸಿ.';
                                            } else if ((FFAppState().nonSpecificIndicator == 'low') &&
                                                (FFAppState().specificIndicator ==
                                                    'high')) {
                                              return 'ಮಗುವಿನ ಕಲಿಕೆಯನ್ನು ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ ಮತ್ತು ಆಗಾಗ್ಗೆ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ,  ಮಕ್ಕಳ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಕೇಂದ್ರದಲ್ಲಿ ವಿಸ್ತೃತ ತಪಾಸಣೆ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಆದಷ್ಟು ಬೇಗ/ಈ ವರ್ಷಾರ್ಧದಲ್ಲಿಯೇ ಪರಿಗಣಿಸಿ ಮುಂಬರುವ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಕನಿಷ್ಠ ಒಂದು ಬಾರಿ ತಪಾಸಣೆ.';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'low') &&
                                                (FFAppState().specificIndicator ==
                                                    'moderate')) {
                                              return 'ಈ ಶೈಕ್ಷಣಿಕ ವರ್ಷದಲ್ಲಿ ಮಗುವಿನ ಕಲಿಕೆಯನ್ನು ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ. ಶೈಕ್ಷಣಿಕ ವರ್ಷದ ಕೊನೆಯಲ್ಲಿ SLD ಸ್ಕ್ರೀನಿಂಗ್ ಅನ್ನು ಪುನರಾವರ್ತಿಸಿ ಮುಂಬರುವ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಕನಿಷ್ಠ ಒಂದು ಬಾರಿ ತಪಾಸಣೆ.';
                                            } else {
                                              return 'ಶೈಕ್ಷಣಿಕ ವರ್ಷದ ಕೊನೆಯಲ್ಲಿ SLD ಸ್ಕ್ರೀನಿಂಗ್ ಅನ್ನು ಪುನರಾವರ್ತಿಸಿ ಶೈಕ್ಷಣಿಕ ಪ್ರಗತಿಯನ್ನು ನಿಕಟವಾಗಿ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ ಮುಂಬರುವ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಕನಿಷ್ಠ ಒಂದು ಬಾರಿ ತಪಾಸಣೆ.';
                                            }
                                          }(),
                                          teacherName: currentUserDisplayName,
                                          colorNohash: () {
                                            if ((FFAppState().nonSpecificIndicator == 'high') &&
                                                (FFAppState().specificIndicator ==
                                                    'high')) {
                                              return 'C00000';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'high') &&
                                                (FFAppState().specificIndicator ==
                                                    'moderate')) {
                                              return 'FF0000';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'high') &&
                                                (FFAppState().specificIndicator ==
                                                    'low')) {
                                              return 'FFC000';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'moderate') &&
                                                (FFAppState().specificIndicator ==
                                                    'high')) {
                                              return 'FF0000';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'moderate') &&
                                                (FFAppState().specificIndicator ==
                                                    'moderate')) {
                                              return 'FFC000';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'moderate') &&
                                                (FFAppState().specificIndicator ==
                                                    'low')) {
                                              return 'FFFF00';
                                            } else if ((FFAppState().nonSpecificIndicator == 'low') &&
                                                (FFAppState().specificIndicator ==
                                                    'high')) {
                                              return 'FF0000';
                                            } else if ((FFAppState()
                                                        .nonSpecificIndicator ==
                                                    'low') &&
                                                (FFAppState().specificIndicator ==
                                                    'moderate')) {
                                              return 'FFC000';
                                            } else {
                                              return '92D050';
                                            }
                                          }(),
                                        ));

                                    await HistoryRecord.collection.doc().set({
                                      ...createHistoryRecordData(
                                        testType: 'SLD Umbrella Screening',
                                        severityScore: () {
                                          if ((FFAppState().s4evalReading >
                                                  FFAppState().s4evalWritng) &&
                                              (FFAppState().s4evalReading >
                                                  FFAppState().s4evalMath)) {
                                            return 'Dyslexia Severity Detected';
                                          } else if ((FFAppState()
                                                      .s4evalReading <
                                                  FFAppState().s4evalWritng) &&
                                              (FFAppState().s4evalMath <
                                                  FFAppState().s4evalWritng)) {
                                            return 'Dysgraphia Severity Detected';
                                          } else {
                                            return 'Dyscalculia Severity Detected';
                                          }
                                        }(),
                                        date: getCurrentTimestamp,
                                        uid: currentUserReference,
                                        colourCode: () {
                                          if ((FFAppState().nonSpecificIndicator ==
                                                  'high') &&
                                              (FFAppState().specificIndicator ==
                                                  'high')) {
                                            return '#C00000';
                                          } else if ((FFAppState().nonSpecificIndicator ==
                                                  'high') &&
                                              (FFAppState().specificIndicator ==
                                                  'moderate')) {
                                            return '#FF0000';
                                          } else if ((FFAppState().nonSpecificIndicator ==
                                                  'high') &&
                                              (FFAppState().specificIndicator ==
                                                  'low')) {
                                            return '#FFC000';
                                          } else if ((FFAppState().nonSpecificIndicator ==
                                                  'moderate') &&
                                              (FFAppState().specificIndicator ==
                                                  'high')) {
                                            return '#FF0000';
                                          } else if ((FFAppState()
                                                      .nonSpecificIndicator ==
                                                  'moderate') &&
                                              (FFAppState().specificIndicator ==
                                                  'moderate')) {
                                            return '#FFC000';
                                          } else if ((FFAppState()
                                                      .nonSpecificIndicator ==
                                                  'moderate') &&
                                              (FFAppState().specificIndicator ==
                                                  'low')) {
                                            return '#FFFF00';
                                          } else if ((FFAppState()
                                                      .nonSpecificIndicator ==
                                                  'low') &&
                                              (FFAppState().specificIndicator ==
                                                  'high')) {
                                            return '#FF0000';
                                          } else if ((FFAppState()
                                                      .nonSpecificIndicator ==
                                                  'low') &&
                                              (FFAppState().specificIndicator ==
                                                  'moderate')) {
                                            return '#FFC000';
                                          } else {
                                            return '#92D050';
                                          }
                                        }(),
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'recommendation': [
                                            () {
                                              if ((FFAppState()
                                                          .nonSpecificIndicator ==
                                                      'high') &&
                                                  (FFAppState().specificIndicator ==
                                                      'high')) {
                                                return 'Immediately refer for overall diagnostic assessment and planning management at the nearest/convenient Child and adolescent mental health Centre';
                                              } else if ((FFAppState()
                                                          .nonSpecificIndicator ==
                                                      'high') &&
                                                  (FFAppState().specificIndicator ==
                                                      'moderate')) {
                                                return 'Monitor closely and frequently preferably with one-to-one basis in this semester, consider referring for urgent diagnostic assessment at the earliest/within this semester. Regular screening in every school mental health camp';
                                              } else if ((FFAppState()
                                                          .nonSpecificIndicator ==
                                                      'high') &&
                                                  (FFAppState().specificIndicator ==
                                                      'low')) {
                                                return 'Refer for a repeat SLD screening after this semester and consider diagnostic assessment later. Consider exposure and one-to-one remedial classes starting from a lower grade in the areas of deficit. Priority screening at School mental health camps';
                                              } else if ((FFAppState()
                                                          .nonSpecificIndicator ==
                                                      'moderate') &&
                                                  (FFAppState().specificIndicator ==
                                                      'high')) {
                                                return 'Prioritize and refer for diagnostic assessment at the earliest/within this semester at the nearest/convenient Child and adolescent mental health Centre. Monitor closely and frequently on one-to-one basis. Priority screening at school mental health camps';
                                              } else if ((FFAppState()
                                                          .nonSpecificIndicator ==
                                                      'moderate') &&
                                                  (FFAppState().specificIndicator ==
                                                      'moderate')) {
                                                return 'Monitor closely and frequently preferably with one-to-one basis in this academic year, consider referring for diagnostic assessment within this academic year. At-risk screening may be repeated before referral.  Periodic screening in school mental health camps';
                                              } else if ((FFAppState()
                                                          .nonSpecificIndicator ==
                                                      'moderate') &&
                                                  (FFAppState().specificIndicator ==
                                                      'low')) {
                                                return 'Identify the areas of deficit and exposure to the same with remedial classes with less student teacher ratio, preferably one-to-one monitoring.  Periodic screening in school mental health camps Repeat screening at the academic year end';
                                              } else if ((FFAppState()
                                                          .nonSpecificIndicator ==
                                                      'low') &&
                                                  (FFAppState().specificIndicator ==
                                                      'high')) {
                                                return 'Monitor closely and frequently on one-to-one basis. Consider referring for diagnostic assessment at the earliest/within this semester';
                                              } else if ((FFAppState()
                                                          .nonSpecificIndicator ==
                                                      'low') &&
                                                  (FFAppState()
                                                          .specificIndicator ==
                                                      'moderate')) {
                                                return 'Monitor closely and frequently preferably with one-to-one basis in this academic year. Repeat SLD screening at the end of the academic year';
                                              } else {
                                                return 'Repeat SLD screening at academic year end. Monitor the academic progress closely. At least one screening in upcoming school mental health camp';
                                              }
                                            }()
                                          ],
                                        },
                                      ),
                                    });
                                    if (Navigator.of(context).canPop()) {
                                      context.pop();
                                    }
                                    context.pushNamed(
                                      Result1Widget.routeName,
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

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Section 4 Completed',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 3000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    safeSetState(() {
                                      _model.radioButtonValueController1
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
                                      _model.radioButtonValueController8
                                          ?.reset();
                                      _model.radioButtonValueController9
                                          ?.reset();
                                      _model.radioButtonValueController12
                                          ?.reset();
                                      _model.radioButtonValueController13
                                          ?.reset();
                                      _model.radioButtonValueController11
                                          ?.reset();
                                      _model.radioButtonValueController10
                                          ?.reset();
                                      _model.radioButtonValueController14
                                          ?.reset();
                                      _model.radioButtonValueController15
                                          ?.reset();
                                      _model.radioButtonValueController16
                                          ?.reset();
                                      _model.radioButtonValueController17
                                          ?.reset();
                                      _model.radioButtonValueController18
                                          ?.reset();
                                      _model.radioButtonValueController19
                                          ?.reset();
                                      _model.radioButtonValueController20
                                          ?.reset();
                                    });
                                    return;
                                  } else {
                                    return;
                                  }
                                },
                          text: FFLocalizations.of(context).getText(
                            'tq4pu6w5' /* Finish */,
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
                            disabledColor: Color(0xCE57636C),
                            disabledTextColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        ),
                      ),
                    ],
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

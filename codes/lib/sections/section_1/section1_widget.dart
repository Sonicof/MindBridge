import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/sections/list_o_behaviours/list_o_behaviours_widget.dart';
import '/sections/teminate/teminate_widget.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'section1_model.dart';
export 'section1_model.dart';

class Section1Widget extends StatefulWidget {
  const Section1Widget({
    super.key,
    required this.childid,
    required this.grade,
  });

  final String? childid;
  final String? grade;

  static String routeName = 'Section_1';
  static String routePath = '/section1';

  @override
  State<Section1Widget> createState() => _Section1WidgetState();
}

class _Section1WidgetState extends State<Section1Widget> {
  late Section1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Section1Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      while (true) {
        if (FFAppState().timerCheck) {
          _model.timerController.onStartTimer();
          return;
        } else {
          return;
        }
      }
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
        List<ChildDataRecord> section1ChildDataRecordList = snapshot.data!;
        final section1ChildDataRecord = section1ChildDataRecordList.isNotEmpty
            ? section1ChildDataRecordList.first
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
                                                'krsv83r7' /* SECTION 1 */,
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
                                        borderRadius: 8.0,
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
                                                          section1ChildDataRecord!
                                                              .reference,
                                                      numberOfSectionsToDelete:
                                                          0,
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
                                width: 2.0,
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
                                          'r8w2ltao' /* OUESTION 1: */,
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
                                          'l5gka12o' /* Does the child seem lagging si... */,
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
                                              '4awaze79' /* Yes – both physically and ment... */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'mvzqa71a' /* Yes, mentally but not physical... */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'rim6yobl' /* Not really sure */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'x5cka74z' /* No */,
                                            )
                                          ].toList(),
                                          onChanged: (val) =>
                                              safeSetState(() {}),
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
                                width: 2.0,
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
                                          'jry1v8tp' /* OUESTION 2: */,
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
                                          'ex6hhxpx' /* Is the child able to take care... */,
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
                                              '0uuwddal' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'jw8g50hk' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'pu3b4ufx' /* Not Sure */,
                                            )
                                          ].toList(),
                                          onChanged: (val) =>
                                              safeSetState(() {}),
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
                                width: 2.0,
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
                                          '3rzcs41e' /* OUESTION 3: */,
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
                                          '59a1ixcn' /* Is the child satisfactorily ab... */,
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
                                              'rric3ru1' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'tjrg5s20' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '4y9mxd0c' /* Not Sure */,
                                            )
                                          ].toList(),
                                          onChanged: (val) =>
                                              safeSetState(() {}),
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
                                          'fak18shw' /* OUESTION 4: */,
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
                                          'bbbm56hy' /* Does the child express any wil... */,
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
                                              '7zik3b6r' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'ut63wi05' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'epkrtquc' /* Not Sure */,
                                            )
                                          ].toList(),
                                          onChanged: (val) =>
                                              safeSetState(() {}),
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
                                          'wia9krjw' /* OUESTION 5: */,
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
                                          'm11rmzmc' /* Does the child make consistent... */,
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
                                              'yby2q2e6' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'qqkfurjq' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'mzyjm5k2' /* Not Sure */,
                                            )
                                          ].toList(),
                                          onChanged: (val) =>
                                              safeSetState(() {}),
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
                                          'ryo0isz6' /* OUESTION 6: */,
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
                                      RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '41jbfpqs' /* Does the child have any persis... */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    font: GoogleFonts.outfit(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'abkszeuu' /*   See List Here */,
                                              ),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                              mouseCursor:
                                                  SystemMouseCursors.click,
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {
                                                  FFAppState().timerCheck =
                                                      false;
                                                  safeSetState(() {});
                                                  _model.timerController
                                                      .onStopTimer();
                                                  await showDialog(
                                                    barrierDismissible: false,
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    dialogContext)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child:
                                                              ListOBehavioursWidget(),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.outfit(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowRadioButton(
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              '4lmhqvlg' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'avo2kfz8' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'ktq3hdjx' /* Not Sure */,
                                            )
                                          ].toList(),
                                          onChanged: (val) =>
                                              safeSetState(() {}),
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
                                          'p78olq0k' /* OUESTION 7: */,
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
                                          'fhqxa56u' /* Does the child have significan... */,
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
                                              '9rw7r76y' /* Yes */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'wx31vkdo' /* No */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'f0q7uvlj' /* Not Sure */,
                                            )
                                          ].toList(),
                                          onChanged: (val) =>
                                              safeSetState(() {}),
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
                                    var _shouldSetState = false;
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
                                      await Section1Record.collection
                                          .doc()
                                          .set(createSection1RecordData(
                                            s1q1: () {
                                              if ((_model.radioButtonValue1 ==
                                                      'ಹೌದು – ದೈಹಿಕ ಹಾಗು ಬೌದ್ಧಿಕವಾಗಿ ಎರಡರಲ್ಲೂ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Yes – both physically and mentally';
                                              } else if ((_model
                                                          .radioButtonValue1 ==
                                                      'ಹೌದು, ಬೌದ್ಧಿಕವಾಗಿ ಮಾತ್ರ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Yes, mentally but not physically';
                                              } else if ((_model
                                                          .radioButtonValue1 ==
                                                      'ಸರಿಯಾಗಿ ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'kn')) {
                                                return 'Not really sure';
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
                                            s1q2: () {
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
                                                return 'Not Sure';
                                              } else {
                                                return _model.radioButtonValue2;
                                              }
                                            }(),
                                            s1q3: () {
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
                                                return 'Not Sure';
                                              } else {
                                                return _model.radioButtonValue3;
                                              }
                                            }(),
                                            s1q4: () {
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
                                                return 'Not Sure';
                                              } else {
                                                return _model.radioButtonValue4;
                                              }
                                            }(),
                                            s1q5: () {
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
                                                return 'Not Sure';
                                              } else {
                                                return _model.radioButtonValue5;
                                              }
                                            }(),
                                            s1q6: () {
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
                                                return 'Not Sure';
                                              } else {
                                                return _model.radioButtonValue6;
                                              }
                                            }(),
                                            s1q7: () {
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
                                                return 'Not Sure';
                                              } else {
                                                return _model.radioButtonValue7;
                                              }
                                            }(),
                                            uid: currentUserReference,
                                            cid: section1ChildDataRecord
                                                ?.reference,
                                            s1q1k: () {
                                              if ((_model.radioButtonValue1 ==
                                                      'Yes – both physically and mentally') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಹೌದು – ದೈಹಿಕ ಹಾಗು ಬೌದ್ಧಿಕವಾಗಿ ಎರಡರಲ್ಲೂ';
                                              } else if ((_model
                                                          .radioButtonValue1 ==
                                                      'Yes, mentally but not physically') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಹೌದು, ಬೌದ್ಧಿಕವಾಗಿ ಮಾತ್ರ';
                                              } else if ((_model
                                                          .radioButtonValue1 ==
                                                      'Not really sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಸರಿಯಾಗಿ ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ';
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
                                            s1q2k: () {
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
                                                      'Not Sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue2;
                                              }
                                            }(),
                                            s1q3k: () {
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
                                                      'Not Sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue3;
                                              }
                                            }(),
                                            s1q4k: () {
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
                                                      'Not Sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue4;
                                              }
                                            }(),
                                            s1q5k: () {
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
                                                      'Not Sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue5;
                                              }
                                            }(),
                                            s1q6k: () {
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
                                                      'Not Sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue6;
                                              }
                                            }(),
                                            s1q7k: () {
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
                                                      'Not Sure') &&
                                                  (FFLocalizations.of(context)
                                                          .languageCode ==
                                                      'en')) {
                                                return 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ';
                                              } else {
                                                return _model.radioButtonValue7;
                                              }
                                            }(),
                                          ));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Section 1 Completed',
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
                                      if (false) {
                                        _model.teacherNumber =
                                            await queryTeachernumberRecordOnce(
                                          queryBuilder: (teachernumberRecord) =>
                                              teachernumberRecord.where(
                                            'number',
                                            isEqualTo: currentPhoneNumber,
                                          ),
                                          singleRecord: true,
                                        ).then((s) => s.firstOrNull);
                                        _shouldSetState = true;

                                        await ResultRecord.collection
                                            .doc()
                                            .set(createResultRecordData(
                                              recommendation:
                                                  'Please refer to a specialised professional for detailed Medical and Psychological Assessment',
                                              uid: currentUserReference,
                                              cid: section1ChildDataRecord
                                                  ?.reference,
                                              timestamp: getCurrentTimestamp,
                                              childName: section1ChildDataRecord
                                                  ?.childName,
                                              principalReference: _model
                                                  .teacherNumber?.principalRef,
                                              teacherNumber: currentPhoneNumber,
                                              recommendationk:
                                                  'ವಿವರವಾದ ವೈದ್ಯಕೀಯ ಮತ್ತು ಮಾನಸಿಕ ಮೌಲ್ಯಮಾಪನಕ್ಕಾಗಿ ದಯವಿಟ್ಟು ವಿಶೇಷ ವೃತ್ತಿಪರರನ್ನು ಸಂಪರ್ಕಿಸಿ',
                                              teacherName:
                                                  currentUserDisplayName,
                                              colorcode: '#C00000',
                                              colorNohash: 'C00000',
                                            ));

                                        await currentUserReference!.update({
                                          ...mapToFirestore(
                                            {
                                              'screening_count':
                                                  FieldValue.increment(1),
                                            },
                                          ),
                                        });

                                        context.goNamed(
                                          ReferWidget.routeName,
                                          queryParameters: {
                                            'childId': serializeParam(
                                              section1ChildDataRecord
                                                  ?.reference,
                                              ParamType.DocumentReference,
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
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else {
                                        FFAppState().t1 =
                                            _model.timerMilliseconds;
                                        if (Navigator.of(context).canPop()) {
                                          context.pop();
                                        }
                                        context.pushNamed(
                                          Section2Widget.routeName,
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
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    } else {
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                            text: FFLocalizations.of(context).getText(
                              'a84mf8hg' /* NEXT */,
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
                              disabledColor: Color(0xC457636C),
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

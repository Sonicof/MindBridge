import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sections/bullet_point/bullet_point_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'result1_model.dart';
export 'result1_model.dart';

class Result1Widget extends StatefulWidget {
  const Result1Widget({
    super.key,
    required this.childid,
    required this.grade,
  });

  final String? childid;
  final String? grade;

  static String routeName = 'result1';
  static String routePath = '/result1';

  @override
  State<Result1Widget> createState() => _Result1WidgetState();
}

class _Result1WidgetState extends State<Result1Widget>
    with TickerProviderStateMixin {
  late Result1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Result1Model());
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
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
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
        List<ChildDataRecord> result1ChildDataRecordList = snapshot.data!;
        final result1ChildDataRecord = result1ChildDataRecordList.isNotEmpty
            ? result1ChildDataRecordList.first
            : null;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryText,
              automaticallyImplyLeading: false,
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: 120.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.of(context).primary,
                                FlutterFlowTheme.of(context).tertiary
                              ],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(1.0, -1.0),
                              end: AlignmentDirectional(-1.0, 1.0),
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Container(
                                width: 120.0,
                                height: 120.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: Image.network(
                                        valueOrDefault(
                                                    currentUserDocument?.gender,
                                                    '') ==
                                                'Male'
                                            ? 'https://firebasestorage.googleapis.com/v0/b/sld-cdsimer.firebasestorage.app/o/boy%20image.jpg?alt=media&token=a1d6d973-cc04-4a76-8c76-b28e5c34be14'
                                            : 'https://firebasestorage.googleapis.com/v0/b/sld-cdsimer.firebasestorage.app/o/female%20image.jpg?alt=media&token=063d3aec-f8ed-4436-9a72-0df3f949c32f',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                Image.asset(
                                          'assets/images/error_image.jpg',
                                          width: 100.0,
                                          height: 100.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => Text(
                        currentUserDisplayName,
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => GradientText(
                        '${FFLocalizations.of(context).languageCode == 'en' ? 'Grade  ' : 'ಗ್ರೇಡ್ '}${valueOrDefault(currentUserDocument?.grade, '')}',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondary,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                        colors: [
                          FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).tertiary
                        ],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => Text(
                        '${FFLocalizations.of(context).languageCode == 'en' ? 'Date of Birth : ' : 'ಹುಟ್ತಿದ ದಿನ : '}${valueOrDefault(currentUserDocument?.dob, '')}',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).accent4,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 38.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 400.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                -1.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'xz5vvrdy' /* Result */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  font: GoogleFonts.outfit(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 28.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Wrap(
                                          spacing: 16.0,
                                          runSpacing: 16.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 12.0, 8.0, 12.0),
                                                child: SingleChildScrollView(
                                                  primary: false,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .supervisor_account_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 44.0,
                                                      ),
                                                      if ((FFAppState()
                                                                  .nonSpecificIndicator ==
                                                              'high') &&
                                                          (FFAppState()
                                                                  .specificIndicator ==
                                                              'high'))
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: () {
                                                              if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFC00000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFFF00);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else {
                                                                return Color(
                                                                    0xFF92D050);
                                                              }
                                                            }(),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                          ),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .bulletPointModel1,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                BulletPointWidget(
                                                              text:
                                                                  valueOrDefault<
                                                                      String>(
                                                                FFLocalizations.of(context)
                                                                            .languageCode ==
                                                                        'en'
                                                                    ? 'Immediately refer for overall diagnostic assessment and planning management at the nearest/convenient Child and adolescent mental health Centre.'
                                                                    : 'ತಕ್ಷಣವೇ ಹತ್ತಿರದ/ಅನುಕೂಲವಾದ ಮಕ್ಕಳ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಕೇಂದ್ರದಲ್ಲಿ ವಿಸ್ತೃತ ತಪಾಸಣೆ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಕಳುಹಿಸಿ.',
                                                                'Immediately refer for overall diagnostic assessment and planning management at the nearest/convenient Child and adolescent mental health Centre.',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .nonSpecificIndicator ==
                                                              'high') &&
                                                          (FFAppState()
                                                                  .specificIndicator ==
                                                              'moderate'))
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: () {
                                                              if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFC00000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFFF00);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else {
                                                                return Color(
                                                                    0xFF92D050);
                                                              }
                                                            }(),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel2,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: valueOrDefault<
                                                                      String>(
                                                                    FFLocalizations.of(context).languageCode ==
                                                                            'en'
                                                                        ? 'Monitor closely and frequently preferably with one-to-one basis in this semester.'
                                                                        : 'ಈ ವರ್ಷಾರ್ಧದಲ್ಲಿ ಮಗುವಿನ ಕಲಿಕೆಯನ್ನು ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ ಮತ್ತು ಆಗಾಗ್ಗೆ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ.',
                                                                    'Monitor closely and frequently preferably with one-to-one basis in this semester.',
                                                                  ),
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel3,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: valueOrDefault<
                                                                      String>(
                                                                    FFLocalizations.of(context).languageCode ==
                                                                            'en'
                                                                        ? 'Consider referring for urgent diagnostic assessment at the earliest/within this semester.'
                                                                        : 'ಮಕ್ಕಳ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಕೇಂದ್ರದಲ್ಲಿ ವಿಸ್ತೃತ ತಪಾಸಣೆ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಆದಷ್ಟು ಬೇಗ/ಈ ವರ್ಷಾರ್ಧದಲ್ಲಿಯೇ ಪರಿಗಣಿಸಿ.',
                                                                    'Consider referring for urgent diagnostic assessment at the earliest/within this semester.',
                                                                  ),
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel4,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: valueOrDefault<
                                                                      String>(
                                                                    FFLocalizations.of(context).languageCode ==
                                                                            'en'
                                                                        ? 'Regular screening in every school mental health camp.'
                                                                        : 'ಮುಂದಿನ ಪ್ರತಿ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರದಲ್ಲಿ ಆದ್ಯತೆಯ ತಪಾಸಣೆ.',
                                                                    'Regular screening in every school mental health camp.',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .nonSpecificIndicator ==
                                                              'high') &&
                                                          (FFAppState()
                                                                  .specificIndicator ==
                                                              'low'))
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: () {
                                                              if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFC00000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFFF00);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else {
                                                                return Color(
                                                                    0xFF92D050);
                                                              }
                                                            }(),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel5,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Refer for a repeat SLD screening after this semester and consider diagnostic assessment later.'
                                                                      : 'ಈ ವರ್ಷಾರ್ಧದ ನಂತರ ಪುನರಾವರ್ತಿತ SLD ಸ್ಕ್ರೀನಿಂಗ್ ಅನ್ನು ಮಾಡಿ ಮತ್ತು ನಂತರ ಮಕ್ಕಳ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಕೇಂದ್ರದಲ್ಲಿ ವಿಸ್ತೃತ ತಪಾಸಣೆ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಪರಿಗಣಿಸಿ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel6,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Consider exposure and one-to-one remedial classes starting from a lower grade in the areas of deficit.'
                                                                      : 'ಕಲಿಕಾ ನ್ಯೂನತೆಯ ವಿಷಯಗಳನ್ನು ಗುರುತಿಸಿ, ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ, ಪಾರಿಹಾರಿಕ ತರಗತಿಗಳೊಂದಿಗೆ ಕೆಳಹಂತದ/ಪ್ರಾಥಮಿಕ ಪಾಠಗಳಿಂದ ಪುನರಾವರ್ತಿಸಲು ಪರಿಗಣಿಸಿ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel7,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Priority screening at School mental health camps.'
                                                                      : 'ಮುಂದಿನ ಪ್ರತಿ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಆದ್ಯತೆಯ ತಪಾಸಣೆ.',
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .nonSpecificIndicator ==
                                                              'moderate') &&
                                                          (FFAppState()
                                                                  .specificIndicator ==
                                                              'high'))
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: () {
                                                              if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFC00000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFFF00);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else {
                                                                return Color(
                                                                    0xFF92D050);
                                                              }
                                                            }(),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel8,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Prioritize and refer for diagnostic assessment at the earliest/within this semester at the nearest/convenient Child and adolescent mental health Centre.'
                                                                      : 'ಹತ್ತಿರದ/ಅನುಕೂಲವಾದ ಮಕ್ಕಳ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಕೇಂದ್ರದಲ್ಲಿ ವಿಸ್ತೃತ ತಪಾಸಣೆ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಆದಷ್ಟು ಬೇಗ/ಈ ವರ್ಷಾರ್ಧದಲ್ಲಿಯೇ ಆದ್ಯತೆಯ ಮೇರೆಗೆ ಕಳುಹಿಸಿ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel9,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Monitor closely and frequently on one-to-one basis.'
                                                                      : 'ಮಗುವಿನ ಕಲಿಕೆಯನ್ನು ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ ಮತ್ತು ಆಗಾಗ್ಗೆ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel10,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Priority screening at school mental health camps.'
                                                                      : 'ಮುಂದಿನ ಪ್ರತಿ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಆದ್ಯತೆಯ ತಪಾಸಣೆ.',
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .nonSpecificIndicator ==
                                                              'moderate') &&
                                                          (FFAppState()
                                                                  .specificIndicator ==
                                                              'moderate'))
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: () {
                                                              if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFC00000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFFF00);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else {
                                                                return Color(
                                                                    0xFF92D050);
                                                              }
                                                            }(),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel11,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Monitor closely and frequently preferably with one-to-one basis in this academic year.'
                                                                      : 'ಈ ಶೈಕ್ಷಣಿಕ ವರ್ಷದಲ್ಲಿ ಮಗುವಿನ ಕಲಿಕೆಯನ್ನು ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ ಮತ್ತು ಆಗಾಗ್ಗೆ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel12,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Consider referring for diagnostic assessment within this academic year.'
                                                                      : 'ಮಕ್ಕಳ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಕೇಂದ್ರದಲ್ಲಿ ವಿಸ್ತೃತ ತಪಾಸಣೆ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಪರಿಗಣಿಸಿ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel13,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'At-risk screening may be repeated before referral.'
                                                                      : 'ಕಳುಹಿಸಲು ಮುನ್ನ ಶಾಲೆಯಲ್ಲಿ ಈ ಸ್ಕ್ರೀನಿಂಗ್ ಅನ್ನು ಪುನರಾವರ್ತಿಸಬಹುದು.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel14,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Periodic screening in school mental health camps.'
                                                                      : 'ಮುಂದಿನ ಪ್ರತಿ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಆಗಾಗ್ಗೆ ತಪಾಸಣೆ.',
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .nonSpecificIndicator ==
                                                              'moderate') &&
                                                          (FFAppState()
                                                                  .specificIndicator ==
                                                              'low'))
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: () {
                                                              if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFC00000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFFF00);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else {
                                                                return Color(
                                                                    0xFF92D050);
                                                              }
                                                            }(),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel15,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Identify the areas of deficit and exposure to the same with remedial classes with less student teacher ratio, preferably one-to-one monitoring.'
                                                                      : 'ಕಡಿಮೆ ವಿದ್ಯಾರ್ಥಿ ಶಿಕ್ಷಕರ ಅನುಪಾತದೊಂದಿಗೆ ಪಾರಿಹಾರಿಕ ತರಗತಿಗಳೊಂದಿಗೆ ಕಲಿಕಾ ನ್ಯೂನತೆಯ ವಿಷಯಗಳಲ್ಲಿ ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel16,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Periodic screening in school mental health camps.'
                                                                      : 'ಮುಂದಿನ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಆಗಾಗ್ಗೆ ತಪಾಸಣೆ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel17,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Repeat screening at the academic year end.'
                                                                      : 'ಶೈಕ್ಷಣಿಕ ವರ್ಷದ ಕೊನೆಯಲ್ಲಿ SLD ಸ್ಕ್ರೀನಿಂಗ್ ಅನ್ನು ಪುನರಾವರ್ತಿಸಿ.',
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .nonSpecificIndicator ==
                                                              'low') &&
                                                          (FFAppState()
                                                                  .specificIndicator ==
                                                              'high'))
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: () {
                                                              if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFC00000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFFF00);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else {
                                                                return Color(
                                                                    0xFF92D050);
                                                              }
                                                            }(),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel18,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Monitor closely and frequently on one-to-one basis.'
                                                                      : 'ಮಗುವಿನ ಕಲಿಕೆಯನ್ನು ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ ಮತ್ತು ಆಗಾಗ್ಗೆ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel19,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Consider referring for diagnostic assessment at the earliest/within this semester.'
                                                                      : 'ಮಕ್ಕಳ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಕೇಂದ್ರದಲ್ಲಿ ವಿಸ್ತೃತ ತಪಾಸಣೆ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಆದಷ್ಟು ಬೇಗ/ಈ ವರ್ಷಾರ್ಧದಲ್ಲಿಯೇ ಪರಿಗಣಿಸಿ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel20,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'At least one examination in upcoming school mental health camp.'
                                                                      : 'ಮುಂದಿನ ಪ್ರತಿ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಆದ್ಯತೆಯ ತಪಾಸಣೆ.',
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .nonSpecificIndicator ==
                                                              'low') &&
                                                          (FFAppState()
                                                                  .specificIndicator ==
                                                              'moderate'))
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: () {
                                                              if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFC00000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFFF00);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else {
                                                                return Color(
                                                                    0xFF92D050);
                                                              }
                                                            }(),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel21,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Monitor closely and frequently preferably with one-to-one basis in this academic year.'
                                                                      : 'ಈ ಶೈಕ್ಷಣಿಕ ವರ್ಷದಲ್ಲಿ ಮಗುವಿನ ಕಲಿಕೆಯನ್ನು ವೈಯುಕ್ತಿಕ ಆಧಾರದ ಮೇಲೆ ನಿಕಟವಾಗಿ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel22,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Repeat SLD screening at the end of the academic year.'
                                                                      : 'ಶೈಕ್ಷಣಿಕ ವರ್ಷದ ಕೊನೆಯಲ್ಲಿ SLD ಸ್ಕ್ರೀನಿಂಗ್ ಅನ್ನು ಪುನರಾವರ್ತಿಸಿ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel23,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'At least one examination in upcoming school mental health camp.'
                                                                      : 'ಮುಂಬರುವ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಕನಿಷ್ಠ ಒಂದು ಬಾರಿ ತಪಾಸಣೆ.',
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if ((FFAppState()
                                                                  .nonSpecificIndicator ==
                                                              'low') &&
                                                          (FFAppState()
                                                                  .specificIndicator ==
                                                              'low'))
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: () {
                                                              if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFC00000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'high') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'moderate') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'low')) {
                                                                return Color(
                                                                    0xFFFFFF00);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'high')) {
                                                                return Color(
                                                                    0xFFFF0000);
                                                              } else if ((FFAppState()
                                                                          .nonSpecificIndicator ==
                                                                      'low') &&
                                                                  (FFAppState()
                                                                          .specificIndicator ==
                                                                      'moderate')) {
                                                                return Color(
                                                                    0xFFFFC000);
                                                              } else {
                                                                return Color(
                                                                    0xFF92D050);
                                                              }
                                                            }(),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel24,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Repeat SLD screening at academic year end.'
                                                                      : 'ಶೈಕ್ಷಣಿಕ ವರ್ಷದ ಕೊನೆಯಲ್ಲಿ SLD ಸ್ಕ್ರೀನಿಂಗ್ ಅನ್ನು ಪುನರಾವರ್ತಿಸಿ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel25,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'Monitor the academic progress closely.'
                                                                      : 'ಶೈಕ್ಷಣಿಕ ಪ್ರಗತಿಯನ್ನು ನಿಕಟವಾಗಿ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ.',
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .bulletPointModel26,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BulletPointWidget(
                                                                  text: FFLocalizations.of(context)
                                                                              .languageCode ==
                                                                          'en'
                                                                      ? 'At least one examination in upcoming school mental health camp.'
                                                                      : 'ಮುಂಬರುವ ಶಾಲಾ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಶಿಬಿರಗಳಲ್ಲಿ ಕನಿಷ್ಠ ಒಂದು ಬಾರಿ ತಪಾಸಣೆ.',
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 370.0,
                                                                height: 230.0,
                                                                child: Stack(
                                                                  children: [
                                                                    FlutterFlowPieChart(
                                                                      data:
                                                                          FFPieChartData(
                                                                        values: [
                                                                          _model
                                                                              .one!,
                                                                          _model
                                                                              .two!,
                                                                          _model
                                                                              .three!
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFFEF39CB),
                                                                          Color(
                                                                              0xFF8242D4),
                                                                          Color(
                                                                              0xFFEB7374)
                                                                        ],
                                                                        radius: [
                                                                          100.0,
                                                                          100.0,
                                                                          100.0
                                                                        ],
                                                                      ),
                                                                      donutHoleRadius:
                                                                          0.0,
                                                                      donutHoleColor:
                                                                          Colors
                                                                              .transparent,
                                                                      sectionLabelType:
                                                                          PieChartSectionLabelType
                                                                              .percent,
                                                                      sectionLabelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.outfit(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                            ),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                          ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              1.0),
                                                                      child:
                                                                          FlutterFlowChartLegendWidget(
                                                                        entries: [
                                                                          LegendEntry(
                                                                              Color(0xFFEF39CB),
                                                                              FFLocalizations.of(context).getText(
                                                                                '71xn6pgh' /* Dyslexia */,
                                                                              )),
                                                                          LegendEntry(
                                                                              Color(0xFF8242D4),
                                                                              FFLocalizations.of(context).getText(
                                                                                'e6zm9hvz' /* Dysgraphia */,
                                                                              )),
                                                                          LegendEntry(
                                                                              Color(0xFFEB7374),
                                                                              FFLocalizations.of(context).getText(
                                                                                'fw31rpxj' /* Dyscalculia */,
                                                                              )),
                                                                        ],
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                        textPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        borderWidth:
                                                                            1.0,
                                                                        indicatorSize:
                                                                            15.0,
                                                                        indicatorBorderRadius:
                                                                            BorderRadius.circular(18.0),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '10vjoh10' /* Based on the results this test... */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .outfit(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        10.0,
                                                                        20.0,
                                                                        0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        DyslexiaAssessmentWidget
                                                                            .routeName);
                                                                  },
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '7bnf73ij' /* Go to Dyslexia Assessment */,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        40.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: Color(
                                                                        0xFFFD666E),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      if (() {
                                                        if ((FFAppState()
                                                                    .nonSpecificIndicator ==
                                                                'high') &&
                                                            (FFAppState()
                                                                    .specificIndicator ==
                                                                'high')) {
                                                          return true;
                                                        } else if ((FFAppState()
                                                                    .nonSpecificIndicator ==
                                                                'high') &&
                                                            (FFAppState()
                                                                    .specificIndicator ==
                                                                'moderate')) {
                                                          return true;
                                                        } else if ((FFAppState()
                                                                    .nonSpecificIndicator ==
                                                                'moderate') &&
                                                            (FFAppState()
                                                                    .specificIndicator ==
                                                                'high')) {
                                                          return true;
                                                        } else if ((FFAppState()
                                                                    .nonSpecificIndicator ==
                                                                'low') &&
                                                            (FFAppState()
                                                                    .specificIndicator ==
                                                                'high')) {
                                                          return true;
                                                        } else {
                                                          return false;
                                                        }
                                                      }())
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'bvhf4krd' /* For immediate refferal contact... */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.outfit(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          10.0,
                                                                          20.0,
                                                                          0.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      context.pushNamed(
                                                                          ContactusWidget
                                                                              .routeName);
                                                                    },
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'zkfd67z0' /* Contact Us */,
                                                                    ),
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          40.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.readexPro(
                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Colors.white,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                      elevation:
                                                                          3.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'b59qhnef' /* Thank You For Your Time!!
The ... */
                                                                    ,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .outfit(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        10.0,
                                                                        20.0,
                                                                        0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    context.goNamed(
                                                                        HomePageWidget
                                                                            .routeName);
                                                                  },
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'drkr5bs7' /* Go Home */,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        40.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 8.0)),
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

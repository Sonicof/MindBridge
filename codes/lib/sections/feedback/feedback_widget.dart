import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'feedback_model.dart';
export 'feedback_model.dart';

class FeedbackWidget extends StatefulWidget {
  const FeedbackWidget({super.key});

  static String routeName = 'feedback';
  static String routePath = '/feedback';

  @override
  State<FeedbackWidget> createState() => _FeedbackWidgetState();
}

class _FeedbackWidgetState extends State<FeedbackWidget> {
  late FeedbackModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedbackModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: GradientText(
                  FFLocalizations.of(context).getText(
                    '39nyqgqu' /* Feedback */,
                  ),
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        font: GoogleFonts.outfit(
                          fontWeight: FontWeight.bold,
                          fontStyle: FlutterFlowTheme.of(context)
                              .displaySmall
                              .fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 37.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).displaySmall.fontStyle,
                      ),
                  colors: [
                    FlutterFlowTheme.of(context).customColor12,
                    FlutterFlowTheme.of(context).customColor10,
                    Color(0xFF673AB7),
                    FlutterFlowTheme.of(context).customColor19,
                    FlutterFlowTheme.of(context).customColor48
                  ],
                  gradientDirection: GradientDirection.ltr,
                  gradientType: GradientType.linear,
                ),
              ),
              background: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.asset(
                  'assets/images/ktu;uo;ut;.png',
                  fit: BoxFit.cover,
                ),
              ),
              centerTitle: false,
              expandedTitleScale: 1.0,
              titlePadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 35.0, 0.0),
            ),
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 20.0, 15.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 3.0,
                            ),
                          ),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().dropfA =
                                          !(FFAppState().dropfA ?? true);
                                      safeSetState(() {});
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/letter-a.png',
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'y2gh9apx' /* Engagement */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              FFAppState().dropfA =
                                                  !(FFAppState().dropfA ??
                                                      true);
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.expand_circle_down_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 45.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (FFAppState().dropfA)
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 10.0, 5.0, 10.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(24.0),
                                                topRight: Radius.circular(24.0),
                                                bottomLeft:
                                                    Radius.circular(24.0),
                                                bottomRight:
                                                    Radius.circular(24.0),
                                              ),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 12.0,
                                                          16.0, 12.0),
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
                                                          '17ayqrke' /* OUESTION 1: */,
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
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      Divider(
                                                        height: 16.0,
                                                        thickness: 2.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor65,
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'i8f6pbk9' /* Customisation: Does it provide... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  font: GoogleFonts
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
                                                                  fontSize:
                                                                      16.0,
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
                                                                    10.0,
                                                                    0.0,
                                                                    5.0),
                                                        child:
                                                            FlutterFlowRadioButton(
                                                          options: [
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'oqu3bua3' /* Does not allow any customisati... */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'r3g7zj8z' /* Allows insufficient customisat... */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '10xuxl14' /* Allows basic customisation to ... */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'gmermqtm' /* Allows numerous options for cu... */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'ovhmiigv' /* Allows complete tailoring to t... */,
                                                            )
                                                          ].toList(),
                                                          onChanged:
                                                              (val) async {
                                                            safeSetState(() {});
                                                            _model.q1 = () {
                                                              if ((_model.radioButtonValue1 ==
                                                                      'Does not allow any customisation or requires setting to be input every time.') ||
                                                                  (_model.radioButtonValue1 ==
                                                                      'ಯಾವುದೇ ಗ್ರಾಹಕೀಕರಣವನ್ನು ಅನುಮತಿಸುವುದಿಲ್ಲ ಅಥವಾ ಪ್ರತಿ \tಬಾರಿಯೂ \tಇನ್‌ಪುಟ್ ಮಾಡಲು ಸೆಟ್ಟಿಂಗ್ ಅಗತ್ಯವಿದೆ.')) {
                                                                return 1;
                                                              } else if ((_model
                                                                          .radioButtonValue1 ==
                                                                      'Allows insufficient customisation limiting functions.') ||
                                                                  (_model.radioButtonValue1 ==
                                                                      'ಸಾಕಷ್ಟು ಗ್ರಾಹಕೀಕರಣ ಸೀಮಿತಗೊಳಿಸುವ ಕಾರ್ಯಗಳನ್ನು \tಅನುಮತಿಸುತ್ತದೆ.')) {
                                                                return 2;
                                                              } else if ((_model
                                                                          .radioButtonValue1 ==
                                                                      'Allows basic customisation to function adequately.') ||
                                                                  (_model.radioButtonValue1 ==
                                                                      'ಮೂಲಭೂತ ಗ್ರಾಹಕೀಕರಣವು ಸಮರ್ಪಕವಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸಲು \tಅನುಮತಿಸುತ್ತದೆ.')) {
                                                                return 3;
                                                              } else if ((_model
                                                                          .radioButtonValue1 ==
                                                                      'Allows numerous options for customisation.') ||
                                                                  (_model.radioButtonValue1 ==
                                                                      'ಗ್ರಾಹಕೀಕರಣಕ್ಕಾಗಿ ಹಲವಾರು ಆಯ್ಕೆಗಳನ್ನು ಅನುಮತಿಸುತ್ತದೆ.')) {
                                                                return 4;
                                                              } else if ((_model
                                                                          .radioButtonValue1 ==
                                                                      'Allows complete tailoring to the individual’s characteristics/preferences, retains all settings.') ||
                                                                  (_model.radioButtonValue1 ==
                                                                      'ವ್ಯಕ್ತಿಯ ಗುಣಲಕ್ಷಣಗಳು/ಆದ್ಯತೆಗಳಿಗೆ ಸಂಪೂರ್ಣ ಟೈಲರಿಂಗ್ ಅನ್ನು \tಅನುಮತಿಸುತ್ತದೆ, ಎಲ್ಲಾ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಉಳಿಸಿಕೊಳ್ಳುತ್ತದೆ.')) {
                                                                return 5;
                                                              } else {
                                                                return 0;
                                                              }
                                                            }();
                                                          },
                                                          controller: _model
                                                                  .radioButtonValueController1 ??=
                                                              FormFieldController<
                                                                  String>(null),
                                                          optionHeight: 65.0,
                                                          optionWidth: 270.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .readexPro(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
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
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
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
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(24.0),
                                                topRight: Radius.circular(24.0),
                                                bottomLeft:
                                                    Radius.circular(24.0),
                                                bottomRight:
                                                    Radius.circular(24.0),
                                              ),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 12.0,
                                                          16.0, 12.0),
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
                                                          'vdwrwihv' /* OUESTION 2: */,
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
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      Divider(
                                                        height: 16.0,
                                                        thickness: 2.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor65,
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qns59e53' /* Interactivity: Does it allow u... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  font: GoogleFonts
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
                                                                  fontSize:
                                                                      16.0,
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
                                                                    8.0),
                                                        child:
                                                            FlutterFlowRadioButton(
                                                          options: [
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'iwx3j97a' /* No interactive features and/or... */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '8aa2i5xo' /* Insufficient interactivity, or... */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'qyxy2d15' /* Basic interactive features to ... */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '8mxnzsth' /* Offers a variety of interactiv... */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'j2zqbbej' /*  Very high level of responsive... */,
                                                            )
                                                          ].toList(),
                                                          onChanged:
                                                              (val) async {
                                                            safeSetState(() {});
                                                            _model.q2 = () {
                                                              if ((_model.radioButtonValue2 ==
                                                                      'No interactive features and/or no response to user interaction.') ||
                                                                  (_model.radioButtonValue2 ==
                                                                      'ಸಂವಾದಾತ್ಮಕ/ಪರಸ್ಪರ ಕಾರ್ಯ ನಡೆಸುವ (ಇಂಟರ್ ಆಕ್ಟಿವ್) \tವೈಶಿಷ್ಟ್ಯಗಳಿಲ್ಲ \tಮತ್ತು/ಅಥವಾ ಬಳಕೆದಾರರ ಸಂವಹನಕ್ಕೆ(ಯೂಸರ್ ಇಂಟರ್ ಆಕ್ಷನ್)ಗೆ ಯಾವುದೇ \tಪ್ರತಿಕ್ರಿಯೆ ಇಲ್ಲ.')) {
                                                                return 1;
                                                              } else if ((_model
                                                                          .radioButtonValue2 ==
                                                                      'Insufficient interactivity, or feedback, or user input options, limiting functions.') ||
                                                                  (_model.radioButtonValue2 ==
                                                                      'ಸಾಕಷ್ಟು ಸಂವಾದಾತ್ಮಕತೆ, ಅಥವಾ ಪ್ರತಿಕ್ರಿಯೆ, ಅಥವಾ ಬಳಕೆದಾರರ ಇನ್‌ಪುಟ್ \tಆಯ್ಕೆಗಳು, ಸೀಮಿತಗೊಳಿಸುವ ಕಾರ್ಯಗಳು.')) {
                                                                return 2;
                                                              } else if ((_model
                                                                          .radioButtonValue2 ==
                                                                      'Basic interactive features to function adequately.') ||
                                                                  (_model.radioButtonValue2 ==
                                                                      'ಮೂಲಭೂತ ಸಂವಾದಾತ್ಮಕ ವೈಶಿಷ್ಟ್ಯಗಳು ಸಮರ್ಪಕವಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತಿದೆ.')) {
                                                                return 3;
                                                              } else if ((_model
                                                                          .radioButtonValue2 ==
                                                                      'Offers a variety of interactive features/feedback/user input options.') ||
                                                                  (_model.radioButtonValue2 ==
                                                                      'ವಿವಿಧ ಸಂವಾದಾತ್ಮಕ ವೈಶಿಷ್ಟ್ಯಗಳು/ಪ್ರತಿಕ್ರಿಯೆ/ಬಳಕೆದಾರ ಇನ್‌ಪುಟ್ ಆಯ್ಕೆಗಳನ್ನು \tನೀಡುತ್ತದೆ.')) {
                                                                return 4;
                                                              } else if ((_model
                                                                          .radioButtonValue2 ==
                                                                      'Very high level of responsiveness through interactive features/feedback/user input options.') ||
                                                                  (_model.radioButtonValue2 ==
                                                                      'ಸಂವಾದಾತ್ಮಕ ವೈಶಿಷ್ಟ್ಯಗಳು/ಪ್ರತಿಕ್ರಿಯೆ/ಬಳಕೆದಾರ ಇನ್‌ಪುಟ್ ಆಯ್ಕೆಗಳ \tಮೂಲಕ ಅತಿ ಹೆಚ್ಚಿನ ಮಟ್ಟದ ಸ್ಪಂದಿಸುವಿಕೆ.')) {
                                                                return 5;
                                                              } else {
                                                                return 0;
                                                              }
                                                            }();
                                                          },
                                                          controller: _model
                                                                  .radioButtonValueController2 ??=
                                                              FormFieldController<
                                                                  String>(null),
                                                          optionHeight: 73.0,
                                                          optionWidth: 270.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .readexPro(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
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
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
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
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(24.0),
                                                topRight: Radius.circular(24.0),
                                                bottomLeft:
                                                    Radius.circular(24.0),
                                                bottomRight:
                                                    Radius.circular(24.0),
                                              ),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 12.0,
                                                          16.0, 12.0),
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
                                                          'zmyadwqe' /* OUESTION 3: */,
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
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      Divider(
                                                        height: 16.0,
                                                        thickness: 2.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor65,
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7t842tqa' /* Target group: Is the app conte... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  font: GoogleFonts
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
                                                                  fontSize:
                                                                      16.0,
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
                                                              'srtfamkc' /* Completely inappropriate/uncle... */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '2b2mp7vx' /* Mostly inappropriate/unclear/c... */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              't9qbc7ns' /* Acceptable but not targeted. M... */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'aapyesj9' /* Well-targeted, with negligible... */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'j5jkw0pg' /* Perfectly targeted, no issues ... */,
                                                            )
                                                          ].toList(),
                                                          onChanged:
                                                              (val) async {
                                                            safeSetState(() {});
                                                            _model.q3 = () {
                                                              if ((_model.radioButtonValue3 ==
                                                                      'Completely inappropriate/unclear/confusing.') ||
                                                                  (_model.radioButtonValue3 ==
                                                                      'ಸಂಪೂರ್ಣವಾಗಿ ಅನುಚಿತ/ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ.')) {
                                                                return 1;
                                                              } else if ((_model
                                                                          .radioButtonValue3 ==
                                                                      'Mostly inappropriate/unclear/confusing.') ||
                                                                  (_model.radioButtonValue3 ==
                                                                      'ಹೆಚ್ಚಾಗಿ ಅನುಚಿತ/ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ.')) {
                                                                return 2;
                                                              } else if ((_model
                                                                          .radioButtonValue3 ==
                                                                      'Acceptable but not targeted. May be inappropriate/unclear/confusing.') ||
                                                                  (_model.radioButtonValue3 ==
                                                                      'ಸ್ವೀಕಾರಾರ್ಹ ಆದರೆ ಗುರಿಯಾಗಿಲ್ಲ. \tಅನುಚಿತ/ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯವಾಗಿರಬಹುದು.')) {
                                                                return 3;
                                                              } else if ((_model
                                                                          .radioButtonValue3 ==
                                                                      'Well-targeted, with negligible issues.') ||
                                                                  (_model.radioButtonValue3 ==
                                                                      'ಅತ್ಯಲ್ಪ ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಉತ್ತಮ-ಉದ್ದೇಶಿತ.')) {
                                                                return 4;
                                                              } else if ((_model
                                                                          .radioButtonValue3 ==
                                                                      'Perfectly targeted, no issues found.') ||
                                                                  (_model.radioButtonValue3 ==
                                                                      'ಸಂಪೂರ್ಣವಾಗಿ ಗುರಿಪಡಿಸಲಾಗಿದೆ, ಯಾವುದೇ ಸಮಸ್ಯೆಗಳು ಕಂಡುಬಂದಿಲ್ಲ.')) {
                                                                return 5;
                                                              } else {
                                                                return 0;
                                                              }
                                                            }();
                                                            safeSetState(() {});
                                                          },
                                                          controller: _model
                                                                  .radioButtonValueController3 ??=
                                                              FormFieldController<
                                                                  String>(null),
                                                          optionHeight: 65.0,
                                                          optionWidth: 270.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .readexPro(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
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
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 12.0, 15.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 3.0,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().dropfB =
                                        !(FFAppState().dropfB ?? true);
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
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/letter-b_(2).png',
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
                                              '1ncs4446' /* Functionality */,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
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
                                            0.0, 0.0, 5.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().dropfB =
                                                !(FFAppState().dropfB ?? true);
                                            safeSetState(() {});
                                          },
                                          child: Icon(
                                            Icons.expand_circle_down_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 45.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (FFAppState().dropfB)
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomLeft: Radius.circular(24.0),
                                              bottomRight:
                                                  Radius.circular(24.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 12.0, 16.0, 12.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'u93zt70e' /* OUESTION 1: */,
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
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF39D2C0),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Divider(
                                                      height: 16.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor65,
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'eoa1jeuu' /* Performance: How accurately/fa... */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            font: GoogleFonts
                                                                .outfit(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
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
                                                                  10.0,
                                                                  0.0,
                                                                  5.0),
                                                      child:
                                                          FlutterFlowRadioButton(
                                                        options: [
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'mdbu1qcy' /* App is broken; no/insufficient... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'pxkv0wv0' /* Some functions work, but laggi... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'obyrir1q' /* App works overall. Some techni... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'oft5y8b3' /* Mostly functional with minor/n... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'e6or42np' /* Perfect/timely response; no te... */,
                                                          )
                                                        ].toList(),
                                                        onChanged: (val) async {
                                                          safeSetState(() {});
                                                          _model.q4 = () {
                                                            if ((_model.radioButtonValue4 ==
                                                                    'App is broken; no/insufficient/inaccurate response (e.g. crashes/bugs/broken features, etc.).') ||
                                                                (_model.radioButtonValue4 ==
                                                                    'ಅಪ್ಲಿಕೇಶನ್ ಮುರಿದುಹೋಗಿದೆ; ಇಲ್ಲ/ಸಾಕಷ್ಟಿಲ್ಲ/ತಪ್ಪಾದ ಪ್ರತಿಕ್ರಿಯೆ (ಉದಾ. \tಕ್ರ್ಯಾಶ್‌ಗಳು/ಬಗ್‌ಗಳು/ಮುರಿದ ವೈಶಿಷ್ಟ್ಯಗಳು, ಇತ್ಯಾದಿ).')) {
                                                              return 1;
                                                            } else if ((_model
                                                                        .radioButtonValue4 ==
                                                                    'Some functions work, but lagging or contains major technical problems.') ||
                                                                (_model.radioButtonValue4 ==
                                                                    'ಕೆಲವು ಕಾರ್ಯಗಳು ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತವೆ, ಆದರೆ ಮಂದಗತಿಯಲ್ಲಿವೆ ಅಥವಾ \tಪ್ರಮುಖ ತಾಂತ್ರಿಕ ಸಮಸ್ಯೆಗಳನ್ನು ಒಳಗೊಂಡಿದೆ.')) {
                                                              return 2;
                                                            } else if ((_model
                                                                        .radioButtonValue4 ==
                                                                    'App works overall. Some technical problems need fixing/Slow at times.') ||
                                                                (_model.radioButtonValue4 ==
                                                                    'ಅಪ್ಲಿಕೇಶನ್ ಒಟ್ಟಾರೆಯಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತದೆ. ಕೆಲವು ತಾಂತ್ರಿಕ \tಸಮಸ್ಯೆಗಳನ್ನು ಸರಿಪಡಿಸುವ ಅಗತ್ಯವಿದೆ/ನಿಧಾನವಾಗಿ ಕೆಲವೊಮ್ಮೆ.')) {
                                                              return 3;
                                                            } else if ((_model
                                                                        .radioButtonValue4 ==
                                                                    'Mostly functional with minor/negligible problems.') ||
                                                                (_model.radioButtonValue4 ==
                                                                    'ಚಿಕ್ಕ/ನಗಣ್ಯ(ನೆಗ್ಲಿಜಬಲ್)ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಹೆಚ್ಚಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತದೆ.')) {
                                                              return 4;
                                                            } else if ((_model
                                                                        .radioButtonValue4 ==
                                                                    'Perfect/timely response; no technical bugs found/contains a ‘loading time left’ indicator') ||
                                                                (_model.radioButtonValue4 ==
                                                                    'ಪರಿಪೂರ್ಣ/ಸಕಾಲಿಕ ಪ್ರತಿಕ್ರಿಯೆ; ಯಾವುದೇ ತಾಂತ್ರಿಕ ದೋಷಗಳು \tಕಂಡುಬಂದಿಲ್ಲ/\'ಲೋಡಿಂಗ್ ಸಮಯ ಉಳಿದಿದೆ\' ಸೂಚಕವನ್ನು ಹೊಂದಿದೆ.')) {
                                                              return 5;
                                                            } else {
                                                              return 0;
                                                            }
                                                          }();
                                                        },
                                                        controller: _model
                                                                .radioButtonValueController4 ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        optionHeight: 73.0,
                                                        optionWidth: 270.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                            WrapAlignment.start,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomLeft: Radius.circular(24.0),
                                              bottomRight:
                                                  Radius.circular(24.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 12.0, 16.0, 12.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'fo3ws6kd' /* OUESTION 2: */,
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
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF39D2C0),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Divider(
                                                      height: 16.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor65,
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ym2q7k3z' /* Ease of use: How easy is it to... */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            font: GoogleFonts
                                                                .outfit(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
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
                                                                  10.0,
                                                                  0.0,
                                                                  5.0),
                                                      child:
                                                          FlutterFlowRadioButton(
                                                        options: [
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'x7tdakrq' /* No/limited instructions; menu ... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '0ckd5wwo' /* Usable after a lot of time/eff... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '6ygjmwiw' /* Usable after some time/effort. */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xg469t61' /* Easy to learn how to use the a... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'a3hp7i8t' /* Able to use app immediately; i... */,
                                                          )
                                                        ].toList(),
                                                        onChanged: (val) async {
                                                          safeSetState(() {});
                                                          _model.q5 = () {
                                                            if ((_model.radioButtonValue5 ==
                                                                    'No/limited instructions; menu labels/icons are confusing; complicated.') ||
                                                                (_model.radioButtonValue5 ==
                                                                    'ಇಲ್ಲ/ಸೀಮಿತ ಸೂಚನೆಗಳು; ಮೆನು ಲೇಬಲ್‌ಗಳು/ಚಿಹ್ನೆಗಳು \tಗೊಂದಲಮಯವಾಗಿವೆ; ಸಂಕೀರ್ಣವಾಗಿವೆ.')) {
                                                              return 1;
                                                            } else if ((_model
                                                                        .radioButtonValue5 ==
                                                                    'Usable after a lot of time/effort.') ||
                                                                (_model.radioButtonValue5 ==
                                                                    'ಸಾಕಷ್ಟು ಸಮಯ/ಪ್ರಯತ್ನದ ನಂತರ ಬಳಸಬಹುದಾಗಿದೆ.')) {
                                                              return 2;
                                                            } else if ((_model
                                                                        .radioButtonValue5 ==
                                                                    'Usable after some time/effort.') ||
                                                                (_model.radioButtonValue5 ==
                                                                    'ಸ್ವಲ್ಪ ಸಮಯ/ಪ್ರಯತ್ನದ ನಂತರ ಬಳಸಬಹುದು.')) {
                                                              return 3;
                                                            } else if ((_model
                                                                        .radioButtonValue5 ==
                                                                    'Easy to learn how to use the app (or has clear instructions).') ||
                                                                (_model.radioButtonValue5 ==
                                                                    'ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಹೇಗೆ ಬಳಸುವುದು ಎಂಬುದನ್ನು ಕಲಿಯುವುದು ಸುಲಭ \t(ಅಥವಾ \tಸ್ಪಷ್ಟ ಸೂಚನೆಗಳನ್ನು ಹೊಂದಿದೆ).')) {
                                                              return 4;
                                                            } else if ((_model
                                                                        .radioButtonValue5 ==
                                                                    'Able to use app immediately; intuitive; simple.') ||
                                                                (_model.radioButtonValue5 ==
                                                                    'ತಕ್ಷಣವೇ ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಬಳಸಲು ಸಾಧ್ಯವಾಗುತ್ತದೆ; ಅರ್ಥಗರ್ಭಿತ; ಸರಳ.')) {
                                                              return 5;
                                                            } else {
                                                              return 0;
                                                            }
                                                          }();
                                                        },
                                                        controller: _model
                                                                .radioButtonValueController5 ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        optionHeight: 63.0,
                                                        optionWidth: 270.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                            WrapAlignment.start,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomLeft: Radius.circular(24.0),
                                              bottomRight:
                                                  Radius.circular(24.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 12.0, 16.0, 12.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '8pgv28ie' /* OUESTION 3: */,
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
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF39D2C0),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Divider(
                                                      height: 16.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor65,
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'pibv0mng' /* Navigation: Is moving between ... */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            font: GoogleFonts
                                                                .outfit(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
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
                                                                  10.0,
                                                                  0.0,
                                                                  5.0),
                                                      child:
                                                          FlutterFlowRadioButton(
                                                        options: [
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '36dh9fnj' /* Different sections within the ... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'rdws9u05' /* Usable after a lot of time/eff... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '33wkknk1' /* Usable after some time/effort. */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '0w04kqbo' /* Easy to use or missing a negli... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '43jpejoc' /* Perfectly logical, easy, clear... */,
                                                          )
                                                        ].toList(),
                                                        onChanged: (val) async {
                                                          safeSetState(() {});
                                                          _model.q6 = () {
                                                            if ((_model.radioButtonValue6 ==
                                                                    'Different sections within the app seem logically disconnected and random/ confusing/ navigation is difficult.') ||
                                                                (_model.radioButtonValue6 ==
                                                                    'ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿನ ವಿವಿಧ ವಿಭಾಗಗಳು ತಾರ್ಕಿಕವಾಗಿ(ಲಾಜಿಕಲ್ ಆಗಿ) \tಸಂಪರ್ಕ \tಕಡಿತಗೊಂಡಂತೆ ತೋರುತ್ತಿದೆ ಮತ್ತು ಮನಬಂದಂತೆ (ರ್‍ಯಾಂಡಮ್) /\tಗೊಂದಲಮಯ/ \tಸಂಚರಣೆ ಕಷ್ಟಕರವಾಗಿದೆ.')) {
                                                              return 1;
                                                            } else if ((_model
                                                                        .radioButtonValue6 ==
                                                                    'Usable after a lot of time/effort.') ||
                                                                (_model.radioButtonValue6 ==
                                                                    'ಸಾಕಷ್ಟು ಸಮಯ/ಪ್ರಯತ್ನದ ನಂತರ ಬಳಸಬಹುದಾಗಿದೆ.')) {
                                                              return 2;
                                                            } else if ((_model
                                                                        .radioButtonValue6 ==
                                                                    'Usable after some time/effort.') ||
                                                                (_model.radioButtonValue6 ==
                                                                    'ಸಾಕಷ್ಟು ಸಮಯ/ಪ್ರಯತ್ನದ ನಂತರ ಬಳಸಬಹುದಾಗಿದೆ.')) {
                                                              return 3;
                                                            } else if ((_model
                                                                        .radioButtonValue6 ==
                                                                    'Easy to use or missing a negligible link.') ||
                                                                (_model.radioButtonValue6 ==
                                                                    'ಬಳಸಲು ಸುಲಭ ಅಥವಾ ಅತ್ಯಲ್ಪ ಲಿಂಕ್ ಅನ್ನು ಕಳೆದುಕೊಂಡಿದೆ.')) {
                                                              return 4;
                                                            } else if ((_model
                                                                        .radioButtonValue6 ==
                                                                    'Perfectly logical, easy, clear and intuitive screen flow throughout, or offers shortcuts.') ||
                                                                (_model.radioButtonValue6 ==
                                                                    'ಸಂಪೂರ್ಣವಾಗಿ ತಾರ್ಕಿಕ, ಸುಲಭ, ಸ್ಪಷ್ಟ ಮತ್ತು ಅರ್ಥಗರ್ಭಿತ ಪರದೆಯ ಹರಿವು, \tಅಥವಾ ಶಾರ್ಟ್‌ಕಟ್‌ಗಳನ್ನು ನೀಡುತ್ತದೆ.')) {
                                                              return 5;
                                                            } else {
                                                              return 0;
                                                            }
                                                          }();
                                                        },
                                                        controller: _model
                                                                .radioButtonValueController6 ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        optionHeight: 73.0,
                                                        optionWidth: 270.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                            WrapAlignment.start,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomLeft: Radius.circular(24.0),
                                              bottomRight:
                                                  Radius.circular(24.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 12.0, 16.0, 12.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '9ae54zw0' /* OUESTION 4: */,
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
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF39D2C0),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Divider(
                                                      height: 16.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor65,
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'qy9l20kr' /* Gestural design: Are interacti... */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            font: GoogleFonts
                                                                .outfit(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
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
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowRadioButton(
                                                        options: [
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'fk7n4wqz' /* Completely inconsistent/confus... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'qw727xbu' /* Often inconsistent/confusing. */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ua35lbdk' /* OK with some inconsistencies/c... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '34j1zy7y' /* Mostly consistent/intuitive wi... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ejox4j10' /* Perfectly consistent and intui... */,
                                                          )
                                                        ].toList(),
                                                        onChanged: (val) async {
                                                          safeSetState(() {});
                                                          _model.q7 = () {
                                                            if ((_model.radioButtonValue7 ==
                                                                    'Completely inconsistent/confusing.') ||
                                                                (_model.radioButtonValue7 ==
                                                                    'ಸಂಪೂರ್ಣವಾಗಿ ಸಾಮರಸ್ಯವಿಲ್ಲದ (ಅಸಮಂಜಸ) / ಗೊಂದಲಮಯ.')) {
                                                              return 1;
                                                            } else if ((_model
                                                                        .radioButtonValue7 ==
                                                                    'Often inconsistent/confusing.') ||
                                                                (_model.radioButtonValue7 ==
                                                                    'ಸಾಮಾನ್ಯವಾಗಿ ಅಸಮಂಜಸ / ಗೊಂದಲಮಯ.')) {
                                                              return 2;
                                                            } else if ((_model
                                                                        .radioButtonValue7 ==
                                                                    'OK with some inconsistencies/confusing elements.') ||
                                                                (_model.radioButtonValue7 ==
                                                                    'ಕೆಲವು ಅಸಂಗತತೆಗಳು/ ಗೊಂದಲಮಯ ಅಂಶಗಳೊಂದಿಗೆ ಸರಿ.')) {
                                                              return 3;
                                                            } else if ((_model
                                                                        .radioButtonValue7 ==
                                                                    'Mostly consistent/intuitive with negligible problems.') ||
                                                                (_model.radioButtonValue7 ==
                                                                    'ಅತ್ಯಲ್ಪ ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಹೆಚ್ಚಾಗಿ ಸ್ಥಿರ/ ಅರ್ಥಗರ್ಭಿತ.')) {
                                                              return 4;
                                                            } else if ((_model
                                                                        .radioButtonValue7 ==
                                                                    'Perfectly consistent and intuitive.') ||
                                                                (_model.radioButtonValue7 ==
                                                                    'ಸಂಪೂರ್ಣವಾಗಿ ಸ್ಥಿರ ಮತ್ತು ಅರ್ಥಗರ್ಭಿತ.')) {
                                                              return 5;
                                                            } else {
                                                              return 0;
                                                            }
                                                          }();
                                                        },
                                                        controller: _model
                                                                .radioButtonValueController7 ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        optionHeight: 60.0,
                                                        optionWidth: 270.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                            WrapAlignment.start,
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
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 12.0, 15.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 3.0,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().dropfC =
                                        !(FFAppState().dropfC ?? true);
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
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/i7jxr_c.png',
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
                                              'gqeg9byj' /* Aesthetics */,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
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
                                            0.0, 0.0, 5.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().dropfC =
                                                !(FFAppState().dropfC ?? true);
                                            safeSetState(() {});
                                          },
                                          child: Icon(
                                            Icons.expand_circle_down_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 45.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (FFAppState().dropfC)
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomLeft: Radius.circular(24.0),
                                              bottomRight:
                                                  Radius.circular(24.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 12.0, 16.0, 12.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'h599irmr' /* OUESTION 1: */,
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
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF39D2C0),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Divider(
                                                      height: 16.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor65,
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4rdfk49d' /* Layout: Is arrangement and siz... */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            font: GoogleFonts
                                                                .outfit(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
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
                                                                  10.0,
                                                                  0.0,
                                                                  5.0),
                                                      child:
                                                          FlutterFlowRadioButton(
                                                        options: [
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'r44v7yqg' /* Very bad design, cluttered, so... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'sph8qcq3' /* Satisfactory, few problems wit... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'zcj0ra75' /* Mostly clear, able to select/l... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '2otwmfge' /* Relevant/appropriate/coherent/... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'l5k4f0gx' /* Professional, simple, clear, o... */,
                                                          )
                                                        ].toList(),
                                                        onChanged: (val) async {
                                                          safeSetState(() {});
                                                          _model.q8 = () {
                                                            if ((_model.radioButtonValue8 ==
                                                                    'Very bad design, cluttered, some options impossible to select/locate/see/read device display not optimised.') ||
                                                                (_model.radioButtonValue8 ==
                                                                    'ಅತ್ಯಂತ ಕೆಟ್ಟ ವಿನ್ಯಾಸ, ಅಸ್ತವ್ಯಸ್ತಗೊಂಡಿದೆ, ಕೆಲವು ಆಯ್ಕೆಗಳನ್ನು ಆಯ್ಕೆ \tಮಾಡಲು/ಸ್ಥಳಿಸಲು/ನೋಡಲು/ಓದಲು ಅಸಾಧ್ಯವಾದ ಸಾಧನವನ್ನು ಪ್ಲೇ ಆಪ್ಟಿಮೈಸ್ \tಮಾಡಲಾಗಿಲ್ಲ.')) {
                                                              return 1;
                                                            } else if ((_model
                                                                        .radioButtonValue8 ==
                                                                    'Bad design, random, unclear, some options difficult to select/locate/see/read.') ||
                                                                (_model.radioButtonValue8 ==
                                                                    'ಕೆಟ್ಟ ವಿನ್ಯಾಸ, ಮನಬಂದಂತೆ/ಯಾದೃಚ್ಛಿಕ ( ರ್‍ಯಾಂಡಮ್ ), ಅಸ್ಪಷ್ಟ, ಕೆಲವು \tಆಯ್ಕೆಗಳನ್ನು \tಆಯ್ಕೆ ಮಾಡಲು/ಸ್ಥಳಿಸಲು/ನೋಡಲು/ಓದಲು ಕಷ್ಟ.')) {
                                                              return 2;
                                                            } else if ((_model
                                                                        .radioButtonValue8 ==
                                                                    'Satisfactory, few problems with selecting/locating/seeing/reading items or with minor screensize problems.') ||
                                                                (_model.radioButtonValue8 ==
                                                                    'ತೃಪ್ತಿದಾಯಕ, ಐಟಂಗಳನ್ನು ಆಯ್ಕೆಮಾಡುವುದು/ ಸ್ಥಳಿಸುವುದು/ ನೋಡುವುದು/ \tಓದುವುದು ಅಥವಾ ಸಣ್ಣ ಪರದೆಯ ಗಾತ್ರದ ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಕೆಲವು ಸಮಸ್ಯೆಗಳು.')) {
                                                              return 3;
                                                            } else if ((_model
                                                                        .radioButtonValue8 ==
                                                                    'Mostly clear, able to select/locate/see/read items.') ||
                                                                (_model.radioButtonValue8 ==
                                                                    'ಹೆಚ್ಚಾಗಿ ಸ್ಪಷ್ಟವಾಗಿದೆ, ಐಟಂಗಳನ್ನು ಆಯ್ಕೆ ಮಾಡಲು/ ಪತ್ತೆ ಮಾಡಲು/ನೋಡಲು/ \tಓದಲು ಸಾಧ್ಯವಾಗುತ್ತದೆ.')) {
                                                              return 4;
                                                            } else if ((_model
                                                                        .radioButtonValue8 ==
                                                                    'Professional, simple, clear, orderly, logically organised, device display optimised. Every design component has a purpose.') ||
                                                                (_model.radioButtonValue8 ==
                                                                    'ವೃತ್ತಿಪರ, ಸರಳ, ಸ್ಪಷ್ಟ, ಕ್ರಮಬದ್ಧ, ತಾರ್ಕಿಕವಾಗಿ ಸಂಘಟಿತ, ಸಾಧನ \tಪ್ರದರ್ಶನವನ್ನು ಆಪ್ಟಿಮೈಸ್ ಮಾಡಲಾಗಿದೆ. ಪ್ರತಿಯೊಂದು ವಿನ್ಯಾಸ ಘಟಕವು \tಒಂದು ಉದ್ದೇಶವನ್ನು ಹೊಂದಿದೆ.')) {
                                                              return 5;
                                                            } else {
                                                              return 0;
                                                            }
                                                          }();
                                                        },
                                                        controller: _model
                                                                .radioButtonValueController8 ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        optionHeight: 85.0,
                                                        optionWidth: 270.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                            WrapAlignment.start,
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
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 12.0, 15.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 3.0,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().dropfD =
                                        !(FFAppState().dropfD ?? true);
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
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/08hcy_d.png',
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
                                              '3zkk8b4u' /* Information */,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
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
                                            0.0, 0.0, 5.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().dropfD =
                                                !(FFAppState().dropfD ?? true);
                                            safeSetState(() {});
                                          },
                                          child: Icon(
                                            Icons.expand_circle_down_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 45.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (FFAppState().dropfD)
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomLeft: Radius.circular(24.0),
                                              bottomRight:
                                                  Radius.circular(24.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 12.0, 16.0, 12.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'p49ljcmn' /* OUESTION 1: */,
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
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF39D2C0),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Divider(
                                                      height: 16.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor65,
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'rydseuto' /* Quality of information within ... */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            font: GoogleFonts
                                                                .outfit(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
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
                                                                  10.0,
                                                                  0.0,
                                                                  5.0),
                                                      child:
                                                          FlutterFlowRadioButton(
                                                        options: [
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '47sbi1xj' /*  Irrelevant/inappropriate/inco... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'fibvq7bl' /* Poor. Barely relevant/appropri... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'fcip6a58' /* Moderately relevant/appropriat... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '9vuk32qi' /* Relevant/appropriate/coherent/... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'tnjzn1dt' /* Highly relevant, appropriate, ... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'aofinh9q' /* N/A There is no information wi... */,
                                                          )
                                                        ].toList(),
                                                        onChanged: (val) async {
                                                          safeSetState(() {});
                                                          _model.q9 = () {
                                                            if ((_model.radioButtonValue9 ==
                                                                    'Irrelevant/inappropriate/incoherent/incorrect.') ||
                                                                (_model.radioButtonValue9 ==
                                                                    'ಅಪ್ರಸ್ತುತ/ಅನುಚಿತ/ಅಸಂಗತ/ತಪ್ಪು.')) {
                                                              return 1;
                                                            } else if ((_model
                                                                        .radioButtonValue9 ==
                                                                    'Poor. Barely relevant/appropriate/coherent/may be incorrect.') ||
                                                                (_model.radioButtonValue9 ==
                                                                    'ಕಳಪೆ, ಅಷ್ಟೇನೂ ಸಂಬಂಧಿತ/ಸೂಕ್ತ/ಸುಸಂಬದ್ಧ/ಬಹುಶಃ ತಪ್ಪಾಗಿರಬಹುದು.')) {
                                                              return 2;
                                                            } else if ((_model
                                                                        .radioButtonValue9 ==
                                                                    'Moderately relevant/appropriate/coherent/and appears correct.') ||
                                                                (_model.radioButtonValue9 ==
                                                                    'ಮಧ್ಯಮ ಸಂಬಂಧಿತ/ಸೂಕ್ತ/ಸುಸಂಬದ್ಧ/ಮತ್ತು ಸರಿಯಾಗಿ ಕಾಣಿಸುತ್ತದೆ.')) {
                                                              return 3;
                                                            } else if ((_model
                                                                        .radioButtonValue9 ==
                                                                    'Relevant/appropriate/coherent/correct.') ||
                                                                (_model.radioButtonValue9 ==
                                                                    'ಸಂಬಂಧಿತ/ಸೂಕ್ತ/ಸುಸಂಬದ್ಧ/ಸರಿಯಾದ.')) {
                                                              return 4;
                                                            } else if ((_model
                                                                        .radioButtonValue9 ==
                                                                    'Highly relevant, appropriate, coherent, and correct.') ||
                                                                (_model.radioButtonValue9 ==
                                                                    'ಹೆಚ್ಚು ಸಂಬಂಧಿತ, ಸೂಕ್ತ, ಸುಸಂಬದ್ಧ ಮತ್ತು ಸರಿಯಾದ.')) {
                                                              return 5;
                                                            } else if ((_model
                                                                        .radioButtonValue9 ==
                                                                    'N/A There is no information within the app.') ||
                                                                (_model.radioButtonValue9 ==
                                                                    'N/A ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ಯಾವುದೇ ಮಾಹಿತಿ ಇಲ್ಲ.')) {
                                                              return 0;
                                                            } else {
                                                              return 0;
                                                            }
                                                          }();
                                                        },
                                                        controller: _model
                                                                .radioButtonValueController9 ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        optionHeight: 73.0,
                                                        optionWidth: 270.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                            WrapAlignment.start,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomLeft: Radius.circular(24.0),
                                              bottomRight:
                                                  Radius.circular(24.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 12.0, 16.0, 12.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'uve30b38' /* OUESTION 2: */,
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
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF39D2C0),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Divider(
                                                      height: 16.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor65,
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '2woklp5r' /* Quantity of information within... */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            font: GoogleFonts
                                                                .outfit(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
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
                                                                  10.0,
                                                                  0.0,
                                                                  5.0),
                                                      child:
                                                          FlutterFlowRadioButton(
                                                        options: [
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '7w6qxhkk' /* Minimal or overwhelming. */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'yg1sxqpr' /* Insufficient or possibly overw... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '6ooi3hwn' /* OK but not comprehensive or co... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'tpv1iejm' /* Offers a broad range of inform... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'y0wlhmjj' /* Comprehensive and concise; con... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '1ckmwur4' /* N/A There is no information wi... */,
                                                          )
                                                        ].toList(),
                                                        onChanged: (val) async {
                                                          safeSetState(() {});
                                                          _model.q10 = () {
                                                            if ((_model.radioButtonValue10 ==
                                                                    'Minimal or overwhelming.') ||
                                                                (_model.radioButtonValue10 ==
                                                                    'ಕನಿಷ್ಠ ಅಥವಾ ಅಗಾಧ.')) {
                                                              return 1;
                                                            } else if ((_model
                                                                        .radioButtonValue10 ==
                                                                    'Insufficient or possibly overwhelming.') ||
                                                                (_model.radioButtonValue10 ==
                                                                    'ಸಾಕಷ್ಟಿಲ್ಲದ ಅಥವಾ ಪ್ರಾಯಶಃ ಅಗಾಧ.')) {
                                                              return 2;
                                                            } else if ((_model
                                                                        .radioButtonValue10 ==
                                                                    'OK but not comprehensive or concise.') ||
                                                                (_model.radioButtonValue10 ==
                                                                    'ಸರಿ ಆದರೆ ಸಮಗ್ರ ಅಥವಾ ಸಂಕ್ಷಿಪ್ತವಾಗಿಲ್ಲ.')) {
                                                              return 3;
                                                            } else if ((_model
                                                                        .radioButtonValue10 ==
                                                                    'Offers a broad range of information, has some gaps or unnecessary detail; or has no links to more information and resources.') ||
                                                                (_model.radioButtonValue10 ==
                                                                    'ಮಾಹಿತಿಯ ವಿದೇಶದಲ್ಲಿ ಕೊಡುಗೆಗಳು, ಕೆಲವು ಅಂತರಗಳು ಅಥವಾ ಅನಗತ್ಯ \tವಿವರಗಳನ್ನು ಹೊಂದಿದೆ; ಅಥವಾ ಹೆಚ್ಚಿನ ಮಾಹಿತಿ ಮತ್ತು ಸಂಪನ್ಮೂಲಗಳಿಗೆ \tಯಾವುದೇ ಲಿಂಕ್‌ಗಳನ್ನು ಹೊಂದಿಲ್ಲ.')) {
                                                              return 4;
                                                            } else if ((_model
                                                                        .radioButtonValue10 ==
                                                                    'Comprehensive and concise; contains links to more information and resources.') ||
                                                                (_model.radioButtonValue10 ==
                                                                    'ಸಮಗ್ರ ಮತ್ತು ಸಂಕ್ಷಿಪ್ತ; ಹೆಚ್ಚಿನ ಮಾಹಿತಿ ಮತ್ತು ಸಂಪನ್ಮೂಲಗಳನ್ನು \tಒಳಗೊಂಡಿದೆ.')) {
                                                              return 5;
                                                            } else if ((_model
                                                                        .radioButtonValue10 ==
                                                                    'N/A There is no information within the app.') ||
                                                                (_model.radioButtonValue10 ==
                                                                    'N/A ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ಯಾವುದೇ ಮಾಹಿತಿ ಇಲ್ಲ.')) {
                                                              return 0;
                                                            } else {
                                                              return 0;
                                                            }
                                                          }();
                                                        },
                                                        controller: _model
                                                                .radioButtonValueController10 ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        optionHeight: 73.0,
                                                        optionWidth: 270.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                            WrapAlignment.start,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomLeft: Radius.circular(24.0),
                                              bottomRight:
                                                  Radius.circular(24.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 12.0, 16.0, 12.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6ise3jm3' /* OUESTION 3: */,
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
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF39D2C0),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Divider(
                                                      height: 16.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor65,
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '2vc6fs82' /* Visual information: Is visual ... */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            font: GoogleFonts
                                                                .outfit(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
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
                                                                  10.0,
                                                                  0.0,
                                                                  5.0),
                                                      child:
                                                          FlutterFlowRadioButton(
                                                        options: [
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '7bwmwlmi' /* N/A There is no visual informa... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '93r4yzev' /* Completely unclear/confusing/w... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'gi1ncxmt' /* Mostly unclear/confusing/wrong... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ofess4dv' /* OK but often unclear/confusing... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'mn2d84js' /* Mostly clear/logical/correct w... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'qgb3num1' /* Perfectly clear/logical/correc... */,
                                                          )
                                                        ].toList(),
                                                        onChanged: (val) async {
                                                          safeSetState(() {});
                                                          _model.q11 = () {
                                                            if ((_model.radioButtonValue11 ==
                                                                    'Completely unclear/confusing/wrong or necessary but missing.') ||
                                                                (_model.radioButtonValue11 ==
                                                                    'ಸಂಪೂರ್ಣವಾಗಿ ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ/ತಪ್ಪು ಅಥವಾ ಅಗತ್ಯ ಆದರೆ \tಕಾಣೆಯಾಗಿದೆ.')) {
                                                              return 1;
                                                            } else if ((_model
                                                                        .radioButtonValue11 ==
                                                                    'Mostly unclear/confusing/wrong.') ||
                                                                (_model.radioButtonValue11 ==
                                                                    'ಹೆಚ್ಚಾಗಿ ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ/ತಪ್ಪು.')) {
                                                              return 2;
                                                            } else if ((_model
                                                                        .radioButtonValue11 ==
                                                                    'OK but often unclear/confusing/wrong.') ||
                                                                (_model.radioButtonValue11 ==
                                                                    'ಸರಿ ಆದರೆ ಸಾಮಾನ್ಯವಾಗಿ ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ/ತಪ್ಪು.')) {
                                                              return 3;
                                                            } else if ((_model
                                                                        .radioButtonValue11 ==
                                                                    'Mostly clear/logical/correct with negligible issues.') ||
                                                                (_model.radioButtonValue11 ==
                                                                    'ನಗಣ್ಯ ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಹೆಚ್ಚಾಗಿ ಸ್ಪಷ್ಟ/ತಾರ್ಕಿಕ/ಸರಿಯಾದ.')) {
                                                              return 4;
                                                            } else if ((_model
                                                                        .radioButtonValue11 ==
                                                                    'Perfectly clear/logical/correct.') ||
                                                                (_model.radioButtonValue11 ==
                                                                    'ಸಂಪೂರ್ಣವಾಗಿ ಸ್ಪಷ್ಟ/ತಾರ್ಕಿಕ/ಸರಿಯಾದ.')) {
                                                              return 5;
                                                            } else if ((_model
                                                                        .radioButtonValue11 ==
                                                                    'N/A There is no visual information within the app (e.g. it only contains audio, or text).') ||
                                                                (_model.radioButtonValue11 ==
                                                                    'N/A ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ಯಾವುದೇ ದೃಶ್ಯ ಮಾಹಿತಿ ಇಲ್ಲ (ಉದಾ. ಇದು \tಆಡಿಯೋ \tಅಥವಾ ಪಠ್ಯವನ್ನು ಮಾತ್ರ ಒಳಗೊಂಡಿದೆ).')) {
                                                              return 0;
                                                            } else {
                                                              return 0;
                                                            }
                                                          }();
                                                        },
                                                        controller: _model
                                                                .radioButtonValueController11 ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        optionHeight: 65.0,
                                                        optionWidth: 270.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                            WrapAlignment.start,
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
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 12.0, 20.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 3.0,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().dropfE =
                                        !(FFAppState().dropfE ?? true);
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
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/letter-e.png',
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
                                              'm93ebrau' /* Rating */,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
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
                                            0.0, 0.0, 5.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().dropfE =
                                                !(FFAppState().dropfE ?? true);
                                            safeSetState(() {});
                                          },
                                          child: Icon(
                                            Icons.expand_circle_down_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 45.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (FFAppState().dropfE)
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24.0),
                                              topRight: Radius.circular(24.0),
                                              bottomLeft: Radius.circular(24.0),
                                              bottomRight:
                                                  Radius.circular(24.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 12.0, 16.0, 12.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        's8t4fkgg' /* OUESTION 1: */,
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
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF39D2C0),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Divider(
                                                      height: 16.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor65,
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'jlexrw5p' /* What is your overall star rati... */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            font: GoogleFonts
                                                                .outfit(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          child:
                                                              RatingBar.builder(
                                                            onRatingUpdate:
                                                                (newValue) {
                                                              safeSetState(() =>
                                                                  _model.ratingBarValue =
                                                                      newValue);
                                                              _model.q12 = _model
                                                                  .ratingBarValue!
                                                                  .round();
                                                            },
                                                            itemBuilder:
                                                                (context,
                                                                        index) =>
                                                                    Icon(
                                                              Icons
                                                                  .star_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
                                                            ),
                                                            direction:
                                                                Axis.horizontal,
                                                            initialRating: _model
                                                                    .ratingBarValue ??=
                                                                0.0,
                                                            unratedColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent3,
                                                            itemCount: 5,
                                                            itemSize: 48.0,
                                                            glowColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                          ),
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
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 15.0),
                        child: FFButtonWidget(
                          onPressed: ((_model.radioButtonValue1 == null ||
                                          _model.radioButtonValue1 == '') &&
                                      (_model.radioButtonValue2 == null ||
                                          _model.radioButtonValue2 == '') &&
                                      (_model.radioButtonValue3 == null ||
                                          _model.radioButtonValue3 == '') &&
                                      (_model.radioButtonValue4 == null ||
                                          _model.radioButtonValue4 == '') &&
                                      (_model.radioButtonValue5 == null ||
                                          _model.radioButtonValue5 == '') &&
                                      (_model.radioButtonValue6 == null ||
                                          _model.radioButtonValue6 == '') &&
                                      (_model.radioButtonValue7 == null ||
                                          _model.radioButtonValue7 == '') &&
                                      (_model.radioButtonValue8 == null ||
                                          _model.radioButtonValue8 == '') &&
                                      (_model.radioButtonValue9 == null ||
                                          _model.radioButtonValue9 == '') &&
                                      (_model.radioButtonValue10 == null ||
                                          _model.radioButtonValue10 == '') &&
                                      (_model.radioButtonValue11 == null ||
                                          _model.radioButtonValue11 == '') &&
                                      (_model.ratingBarValue == null)
                                  ? true
                                  : false)
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
                                                    ? 'ಪ್ರತಿಕ್ರಿಯೆ ಸಲ್ಲಿಸಿ'
                                                    : 'Submit Feedback'),
                                            content: Text(FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn'
                                                ? 'ನೀವು ಸಲ್ಲಿಸಲು ಖಚಿತವಾಗಿ ಬಯಸುವಿರಾ?'
                                                : 'Are you Sure that you want to Submit?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: Text(
                                                    FFLocalizations.of(context)
                                                                .languageCode ==
                                                            'kn'
                                                        ? 'ರದ್ದುಮಾಡಿ'
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
                                    _model.secAengagement =
                                        (_model.q1 + _model.q2 + _model.q3) / 3;
                                    _model.secBfunctionality = (_model.q4 +
                                            _model.q5 +
                                            _model.q6 +
                                            _model.q7) /
                                        4;
                                    _model.secCaesthetics =
                                        _model.q8.toDouble();
                                    _model.secDinformation =
                                        (_model.q9 + _model.q10 + _model.q11) /
                                            3;
                                    _model.secErating = _model.q12.toDouble();
                                    _model.objmean = (_model.secAengagement +
                                            _model.secBfunctionality +
                                            _model.secCaesthetics +
                                            _model.secDinformation) /
                                        4;
                                    _model.subjmean = _model.secErating;

                                    await FeedbackRecord.collection
                                        .doc()
                                        .set(createFeedbackRecordData(
                                          fsAq1: () {
                                            if ((FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue1 ==
                                                    'ಯಾವುದೇ ಗ್ರಾಹಕೀಕರಣವನ್ನು ಅನುಮತಿಸುವುದಿಲ್ಲ ಅಥವಾ ಪ್ರತಿ \tಬಾರಿಯೂ \tಇನ್‌ಪುಟ್ ಮಾಡಲು ಸೆಟ್ಟಿಂಗ್ ಅಗತ್ಯವಿದೆ.')) {
                                              return 'Does not allow any customisation or requires setting to be input every time.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue1 ==
                                                    'ಸಾಕಷ್ಟು ಗ್ರಾಹಕೀಕರಣ ಸೀಮಿತಗೊಳಿಸುವ ಕಾರ್ಯಗಳನ್ನು \tಅನುಮತಿಸುತ್ತದೆ.')) {
                                              return 'Allows insufficient customisation limiting functions.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue1 ==
                                                    'ಮೂಲಭೂತ ಗ್ರಾಹಕೀಕರಣವು ಸಮರ್ಪಕವಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸಲು \tಅನುಮತಿಸುತ್ತದೆ.')) {
                                              return 'Allows basic customisation to function adequately.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue1 ==
                                                    'ಗ್ರಾಹಕೀಕರಣಕ್ಕಾಗಿ ಹಲವಾರು ಆಯ್ಕೆಗಳನ್ನು ಅನುಮತಿಸುತ್ತದೆ.')) {
                                              return 'Allows numerous options for customisation.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue1 ==
                                                    'ವ್ಯಕ್ತಿಯ ಗುಣಲಕ್ಷಣಗಳು/ಆದ್ಯತೆಗಳಿಗೆ ಸಂಪೂರ್ಣ ಟೈಲರಿಂಗ್ ಅನ್ನು \tಅನುಮತಿಸುತ್ತದೆ, ಎಲ್ಲಾ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಉಳಿಸಿಕೊಳ್ಳುತ್ತದೆ.')) {
                                              return 'Allows complete tailoring to the individual’s characteristics/preferences, retains all settings.';
                                            } else {
                                              return _model.radioButtonValue1;
                                            }
                                          }(),
                                          fsAq2: () {
                                            if ((FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue2 ==
                                                    'ಸಂವಾದಾತ್ಮಕ/ಪರಸ್ಪರ ಕಾರ್ಯ ನಡೆಸುವ (ಇಂಟರ್ ಆಕ್ಟಿವ್) \tವೈಶಿಷ್ಟ್ಯಗಳಿಲ್ಲ \tಮತ್ತು/ಅಥವಾ ಬಳಕೆದಾರರ ಸಂವಹನಕ್ಕೆ(ಯೂಸರ್ ಇಂಟರ್ ಆಕ್ಷನ್)ಗೆ ಯಾವುದೇ \tಪ್ರತಿಕ್ರಿಯೆ ಇಲ್ಲ.')) {
                                              return 'No interactive features and/or no response to user interaction.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue2 ==
                                                    'ಸಾಕಷ್ಟು ಸಂವಾದಾತ್ಮಕತೆ, ಅಥವಾ ಪ್ರತಿಕ್ರಿಯೆ, ಅಥವಾ ಬಳಕೆದಾರರ ಇನ್‌ಪುಟ್ \tಆಯ್ಕೆಗಳು, ಸೀಮಿತಗೊಳಿಸುವ ಕಾರ್ಯಗಳು.')) {
                                              return 'Insufficient interactivity, or feedback, or user input options, limiting functions.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue2 ==
                                                    'ಮೂಲಭೂತ ಸಂವಾದಾತ್ಮಕ ವೈಶಿಷ್ಟ್ಯಗಳು ಸಮರ್ಪಕವಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತಿದೆ.')) {
                                              return 'Basic interactive features to function adequately.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue2 ==
                                                    'ವಿವಿಧ ಸಂವಾದಾತ್ಮಕ ವೈಶಿಷ್ಟ್ಯಗಳು/ಪ್ರತಿಕ್ರಿಯೆ/ಬಳಕೆದಾರ ಇನ್‌ಪುಟ್ ಆಯ್ಕೆಗಳನ್ನು \tನೀಡುತ್ತದೆ.')) {
                                              return 'Offers a variety of interactive features/feedback/user input options.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue2 ==
                                                    'ಸಂವಾದಾತ್ಮಕ ವೈಶಿಷ್ಟ್ಯಗಳು/ಪ್ರತಿಕ್ರಿಯೆ/ಬಳಕೆದಾರ ಇನ್‌ಪುಟ್ ಆಯ್ಕೆಗಳ \tಮೂಲಕ ಅತಿ ಹೆಚ್ಚಿನ ಮಟ್ಟದ ಸ್ಪಂದಿಸುವಿಕೆ.')) {
                                              return 'Very high level of responsiveness through interactive features/feedback/user input options.';
                                            } else {
                                              return _model.radioButtonValue2;
                                            }
                                          }(),
                                          fsAq3: () {
                                            if ((FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue3 ==
                                                    'ಸಂಪೂರ್ಣವಾಗಿ ಅನುಚಿತ/ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ.')) {
                                              return 'Completely inappropriate/unclear/confusing.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue3 ==
                                                    'ಹೆಚ್ಚಾಗಿ ಅನುಚಿತ/ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ.')) {
                                              return 'Mostly inappropriate/unclear/confusing.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue3 ==
                                                    'ಸ್ವೀಕಾರಾರ್ಹ ಆದರೆ ಗುರಿಯಾಗಿಲ್ಲ. \tಅನುಚಿತ/ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯವಾಗಿರಬಹುದು.')) {
                                              return 'Acceptable but not targeted. May be inappropriate/unclear/confusing.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue3 ==
                                                    'ಅತ್ಯಲ್ಪ ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಉತ್ತಮ-ಉದ್ದೇಶಿತ.')) {
                                              return 'Well-targeted, with negligible issues.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue3 ==
                                                    'ಸಂಪೂರ್ಣವಾಗಿ ಗುರಿಪಡಿಸಲಾಗಿದೆ, ಯಾವುದೇ ಸಮಸ್ಯೆಗಳು ಕಂಡುಬಂದಿಲ್ಲ.')) {
                                              return 'Perfectly targeted, no issues found.';
                                            } else {
                                              return _model.radioButtonValue3;
                                            }
                                          }(),
                                          fsBq1: () {
                                            if ((FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue4 ==
                                                    'ಅಪ್ಲಿಕೇಶನ್ ಮುರಿದುಹೋಗಿದೆ; ಇಲ್ಲ/ಸಾಕಷ್ಟಿಲ್ಲ/ತಪ್ಪಾದ ಪ್ರತಿಕ್ರಿಯೆ (ಉದಾ. \tಕ್ರ್ಯಾಶ್‌ಗಳು/ಬಗ್‌ಗಳು/ಮುರಿದ ವೈಶಿಷ್ಟ್ಯಗಳು, ಇತ್ಯಾದಿ).')) {
                                              return 'App is broken; no/insufficient/inaccurate response (e.g. crashes/bugs/broken features, etc.).';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue4 ==
                                                    'ಕೆಲವು ಕಾರ್ಯಗಳು ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತವೆ, ಆದರೆ ಮಂದಗತಿಯಲ್ಲಿವೆ ಅಥವಾ \tಪ್ರಮುಖ ತಾಂತ್ರಿಕ ಸಮಸ್ಯೆಗಳನ್ನು ಒಳಗೊಂಡಿದೆ.')) {
                                              return 'Some functions work, but lagging or contains major technical problems.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue4 ==
                                                    'ಅಪ್ಲಿಕೇಶನ್ ಒಟ್ಟಾರೆಯಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತದೆ. ಕೆಲವು ತಾಂತ್ರಿಕ \tಸಮಸ್ಯೆಗಳನ್ನು ಸರಿಪಡಿಸುವ ಅಗತ್ಯವಿದೆ/ನಿಧಾನವಾಗಿ ಕೆಲವೊಮ್ಮೆ.')) {
                                              return 'App works overall. Some technical problems need fixing/Slow at times.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue4 ==
                                                    'ಚಿಕ್ಕ/ನಗಣ್ಯ(ನೆಗ್ಲಿಜಬಲ್)ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಹೆಚ್ಚಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತದೆ.')) {
                                              return 'Mostly functional with minor/negligible problems.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue4 ==
                                                    'ಪರಿಪೂರ್ಣ/ಸಕಾಲಿಕ ಪ್ರತಿಕ್ರಿಯೆ; ಯಾವುದೇ ತಾಂತ್ರಿಕ ದೋಷಗಳು \tಕಂಡುಬಂದಿಲ್ಲ/\'ಲೋಡಿಂಗ್ ಸಮಯ ಉಳಿದಿದೆ\' ಸೂಚಕವನ್ನು ಹೊಂದಿದೆ.')) {
                                              return 'Perfect/timely response; no technical bugs found/contains a ‘loading time left’ indicator.';
                                            } else {
                                              return _model.radioButtonValue4;
                                            }
                                          }(),
                                          fsBq2: () {
                                            if ((FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue5 ==
                                                    'ಇಲ್ಲ/ಸೀಮಿತ ಸೂಚನೆಗಳು; ಮೆನು ಲೇಬಲ್‌ಗಳು/ಚಿಹ್ನೆಗಳು \tಗೊಂದಲಮಯವಾಗಿವೆ; ಸಂಕೀರ್ಣವಾಗಿವೆ.')) {
                                              return 'No/limited instructions; menu labels/icons are confusing; complicated.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue5 ==
                                                    'ಸಾಕಷ್ಟು ಸಮಯ/ಪ್ರಯತ್ನದ ನಂತರ ಬಳಸಬಹುದಾಗಿದೆ.')) {
                                              return 'Useable after a lot of time/effort.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue5 ==
                                                    'ಸ್ವಲ್ಪ ಸಮಯ/ಪ್ರಯತ್ನದ ನಂತರ ಬಳಸಬಹುದು.')) {
                                              return 'Useable after some time/effort.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue5 ==
                                                    'ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಹೇಗೆ ಬಳಸುವುದು ಎಂಬುದನ್ನು ಕಲಿಯುವುದು ಸುಲಭ \t(ಅಥವಾ \tಸ್ಪಷ್ಟ ಸೂಚನೆಗಳನ್ನು ಹೊಂದಿದೆ).')) {
                                              return 'Easy to learn how to use the app (or has clear instructions).';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue5 ==
                                                    'ತಕ್ಷಣವೇ ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಬಳಸಲು ಸಾಧ್ಯವಾಗುತ್ತದೆ; ಅರ್ಥಗರ್ಭಿತ; ಸರಳ.')) {
                                              return 'Able to use app immediately; intuitive; simple.';
                                            } else {
                                              return _model.radioButtonValue5;
                                            }
                                          }(),
                                          fsBq3: () {
                                            if ((FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue6 ==
                                                    'ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿನ ವಿವಿಧ ವಿಭಾಗಗಳು ತಾರ್ಕಿಕವಾಗಿ(ಲಾಜಿಕಲ್ ಆಗಿ) \tಸಂಪರ್ಕ \tಕಡಿತಗೊಂಡಂತೆ ತೋರುತ್ತಿದೆ ಮತ್ತು ಮನಬಂದಂತೆ (ರ್‍ಯಾಂಡಮ್) /\tಗೊಂದಲಮಯ/ \tಸಂಚರಣೆ ಕಷ್ಟಕರವಾಗಿದೆ.')) {
                                              return 'Different sections within the app seem logically disconnected and random/ confusing/ navigation is difficult.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue6 ==
                                                    'ಸಾಕಷ್ಟು ಸಮಯ/ಪ್ರಯತ್ನದ ನಂತರ ಬಳಸಬಹುದಾಗಿದೆ.')) {
                                              return 'Usable after a lot of time/effort.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue6 ==
                                                    'ಸ್ವಲ್ಪ ಸಮಯ/ಪ್ರಯತ್ನದ ನಂತರ ಬಳಸಬಹುದಾಗಿದೆ.')) {
                                              return 'Usable after some time/effort.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue6 ==
                                                    'ಬಳಸಲು ಸುಲಭ ಅಥವಾ ಅತ್ಯಲ್ಪ ಲಿಂಕ್ ಅನ್ನು ಕಳೆದುಕೊಂಡಿದೆ.')) {
                                              return 'Easy to use or missing a negligible link.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue6 ==
                                                    'ಸಂಪೂರ್ಣವಾಗಿ ತಾರ್ಕಿಕ, ಸುಲಭ, ಸ್ಪಷ್ಟ ಮತ್ತು ಅರ್ಥಗರ್ಭಿತ ಪರದೆಯ ಹರಿವು, \tಅಥವಾ ಶಾರ್ಟ್‌ಕಟ್‌ಗಳನ್ನು ನೀಡುತ್ತದೆ.')) {
                                              return 'Perfectly logical, easy, clear and intuitive screen flow throughout, or offers shortcuts.';
                                            } else {
                                              return _model.radioButtonValue6;
                                            }
                                          }(),
                                          fsBq4: () {
                                            if ((FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue7 ==
                                                    'ಸಂಪೂರ್ಣವಾಗಿ ಸಾಮರಸ್ಯವಿಲ್ಲದ (ಅಸಮಂಜಸ) / ಗೊಂದಲಮಯ.')) {
                                              return 'Completely inconsistent/confusing.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue7 ==
                                                    'ಸಾಮಾನ್ಯವಾಗಿ ಅಸಮಂಜಸ / ಗೊಂದಲಮಯ.')) {
                                              return 'Often inconsistent/confusing.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue7 ==
                                                    'ಕೆಲವು ಅಸಂಗತತೆಗಳು/ ಗೊಂದಲಮಯ ಅಂಶಗಳೊಂದಿಗೆ ಸರಿ.')) {
                                              return 'OK with some inconsistencies/confusing elements.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue7 ==
                                                    'ಅತ್ಯಲ್ಪ ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಹೆಚ್ಚಾಗಿ ಸ್ಥಿರ/ ಅರ್ಥಗರ್ಭಿತ.')) {
                                              return 'Mostly consistent/intuitive with negligible problems.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue7 ==
                                                    'ಸಂಪೂರ್ಣವಾಗಿ ಸ್ಥಿರ ಮತ್ತು ಅರ್ಥಗರ್ಭಿತ.')) {
                                              return 'Perfectly consistent and intuitive.';
                                            } else {
                                              return _model.radioButtonValue7;
                                            }
                                          }(),
                                          fsCq1: () {
                                            if ((FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue8 ==
                                                    'ಅತ್ಯಂತ ಕೆಟ್ಟ ವಿನ್ಯಾಸ, ಅಸ್ತವ್ಯಸ್ತಗೊಂಡಿದೆ, ಕೆಲವು ಆಯ್ಕೆಗಳನ್ನು ಆಯ್ಕೆ \tಮಾಡಲು/ಸ್ಥಳಿಸಲು/ನೋಡಲು/ಓದಲು ಅಸಾಧ್ಯವಾದ ಸಾಧನವನ್ನು ಪ್ಲೇ ಆಪ್ಟಿಮೈಸ್ \tಮಾಡಲಾಗಿಲ್ಲ.')) {
                                              return 'Very bad design, cluttered, some options impossible to select/locate/see/read device display not optimised.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue8 ==
                                                    'ಕೆಟ್ಟ ವಿನ್ಯಾಸ, ಮನಬಂದಂತೆ/ಯಾದೃಚ್ಛಿಕ ( ರ್‍ಯಾಂಡಮ್ ), ಅಸ್ಪಷ್ಟ, ಕೆಲವು \tಆಯ್ಕೆಗಳನ್ನು \tಆಯ್ಕೆ ಮಾಡಲು/ಸ್ಥಳಿಸಲು/ನೋಡಲು/ಓದಲು ಕಷ್ಟ.')) {
                                              return 'Bad design, random, unclear, some options difficult to select/locate/see/read.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue8 ==
                                                    'ತೃಪ್ತಿದಾಯಕ, ಐಟಂಗಳನ್ನು ಆಯ್ಕೆಮಾಡುವುದು/ ಸ್ಥಳಿಸುವುದು/ ನೋಡುವುದು/ \tಓದುವುದು ಅಥವಾ ಸಣ್ಣ ಪರದೆಯ ಗಾತ್ರದ ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಕೆಲವು ಸಮಸ್ಯೆಗಳು.')) {
                                              return 'Satisfactory, few problems with selecting/locating/seeing/reading items or with minor screensize problems.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue8 ==
                                                    'ಹೆಚ್ಚಾಗಿ ಸ್ಪಷ್ಟವಾಗಿದೆ, ಐಟಂಗಳನ್ನು ಆಯ್ಕೆ ಮಾಡಲು/ ಪತ್ತೆ ಮಾಡಲು/ನೋಡಲು/ \tಓದಲು ಸಾಧ್ಯವಾಗುತ್ತದೆ.')) {
                                              return 'Mostly clear, able to select/locate/see/read items.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue8 ==
                                                    'ವೃತ್ತಿಪರ, ಸರಳ, ಸ್ಪಷ್ಟ, ಕ್ರಮಬದ್ಧ, ತಾರ್ಕಿಕವಾಗಿ ಸಂಘಟಿತ, ಸಾಧನ \tಪ್ರದರ್ಶನವನ್ನು ಆಪ್ಟಿಮೈಸ್ ಮಾಡಲಾಗಿದೆ. ಪ್ರತಿಯೊಂದು ವಿನ್ಯಾಸ ಘಟಕವು \tಒಂದು ಉದ್ದೇಶವನ್ನು ಹೊಂದಿದೆ.')) {
                                              return 'Professional, simple, clear, orderly, logically organised, device display optimised. Every design component has a purpose.';
                                            } else {
                                              return _model.radioButtonValue8;
                                            }
                                          }(),
                                          fsDq1: () {
                                            if ((FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue9 ==
                                                    'N/A ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ಯಾವುದೇ ಮಾಹಿತಿ ಇಲ್ಲ.')) {
                                              return 'N/A There is no information within the app.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue9 ==
                                                    'ಅಪ್ರಸ್ತುತ/ಅನುಚಿತ/ಅಸಂಗತ/ತಪ್ಪು.')) {
                                              return 'Irrelevant/inappropriate/incoherent/incorrect.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue9 ==
                                                    'ಕಳಪೆ, ಅಷ್ಟೇನೂ ಸಂಬಂಧಿತ/ಸೂಕ್ತ/ಸುಸಂಬದ್ಧ/ಬಹುಶಃ ತಪ್ಪಾಗಿರಬಹುದು.')) {
                                              return 'Poor. Barely relevant/appropriate/coherent/may be incorrect.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue9 ==
                                                    'ಮಧ್ಯಮ ಸಂಬಂಧಿತ/ಸೂಕ್ತ/ಸುಸಂಬದ್ಧ/ಮತ್ತು ಸರಿಯಾಗಿ ಕಾಣಿಸುತ್ತದೆ.')) {
                                              return 'Moderately relevant/appropriate/coherent/and appears correct.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue9 ==
                                                    'ಸಂಬಂಧಿತ/ಸೂಕ್ತ/ಸುಸಂಬದ್ಧ/ಸರಿಯಾದ.')) {
                                              return 'Relevant/appropriate/coherent/correct.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue9 ==
                                                    'ಹೆಚ್ಚು ಸಂಬಂಧಿತ, ಸೂಕ್ತ, ಸುಸಂಬದ್ಧ ಮತ್ತು ಸರಿಯಾದ.')) {
                                              return 'Highly relevant, appropriate, coherent, and correct.';
                                            } else {
                                              return _model.radioButtonValue9;
                                            }
                                          }(),
                                          fsDq2: () {
                                            if ((FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue10 ==
                                                    'N/A ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ಯಾವುದೇ ಮಾಹಿತಿ ಇಲ್ಲ.')) {
                                              return 'N/A There is no information within the app.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue10 ==
                                                    'ಕನಿಷ್ಠ ಅಥವಾ ಅಗಾಧ.')) {
                                              return 'Minimal or overwhelming.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue10 ==
                                                    'ಸಾಕಷ್ಟಿಲ್ಲದ ಅಥವಾ ಪ್ರಾಯಶಃ ಅಗಾಧ.')) {
                                              return 'Insufficient or possibly overwhelming.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue10 ==
                                                    'ಸರಿ ಆದರೆ ಸಮಗ್ರ ಅಥವಾ ಸಂಕ್ಷಿಪ್ತವಾಗಿಲ್ಲ.')) {
                                              return 'OK but not comprehensive or concise.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue10 ==
                                                    'ಮಾಹಿತಿಯ ವಿದೇಶದಲ್ಲಿ ಕೊಡುಗೆಗಳು, ಕೆಲವು ಅಂತರಗಳು ಅಥವಾ ಅನಗತ್ಯ \tವಿವರಗಳನ್ನು ಹೊಂದಿದೆ; ಅಥವಾ ಹೆಚ್ಚಿನ ಮಾಹಿತಿ ಮತ್ತು ಸಂಪನ್ಮೂಲಗಳಿಗೆ \tಯಾವುದೇ ಲಿಂಕ್‌ಗಳನ್ನು ಹೊಂದಿಲ್ಲ.')) {
                                              return 'Offers a broad range of information, has some gaps or unnecessary detail; or has no links to more information and resources.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue10 ==
                                                    'ಸಮಗ್ರ ಮತ್ತು ಸಂಕ್ಷಿಪ್ತ; ಹೆಚ್ಚಿನ ಮಾಹಿತಿ ಮತ್ತು ಸಂಪನ್ಮೂಲಗಳನ್ನು \tಒಳಗೊಂಡಿದೆ.')) {
                                              return 'Comprehensive and concise; contains links to more information and resources.';
                                            } else {
                                              return _model.radioButtonValue10;
                                            }
                                          }(),
                                          fsDq3: () {
                                            if ((FFLocalizations.of(context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue11 ==
                                                    'N/A ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ಯಾವುದೇ ದೃಶ್ಯ ಮಾಹಿತಿ ಇಲ್ಲ (ಉದಾ. ಇದು \tಆಡಿಯೋ \tಅಥವಾ ಪಠ್ಯವನ್ನು ಮಾತ್ರ ಒಳಗೊಂಡಿದೆ).')) {
                                              return 'N/A There is no visual information within the app (e.g. it only contains audio, or text).';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue11 ==
                                                    'ಸಂಪೂರ್ಣವಾಗಿ ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ/ತಪ್ಪು ಅಥವಾ ಅಗತ್ಯ ಆದರೆ \tಕಾಣೆಯಾಗಿದೆ.')) {
                                              return 'Completely unclear/confusing/wrong or necessary but missing.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue11 ==
                                                    'ಹೆಚ್ಚಾಗಿ ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ/ತಪ್ಪು.')) {
                                              return 'Mostly unclear/confusing/wrong.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue11 ==
                                                    'ಸರಿ ಆದರೆ ಸಾಮಾನ್ಯವಾಗಿ ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ/ತಪ್ಪು.')) {
                                              return 'OK but often unclear/confusing/wrong.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue11 ==
                                                    'ನಗಣ್ಯ ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಹೆಚ್ಚಾಗಿ ಸ್ಪಷ್ಟ/ತಾರ್ಕಿಕ/ಸರಿಯಾದ.')) {
                                              return 'Mostly clear/logical/correct with negligible issues.';
                                            } else if ((FFLocalizations.of(
                                                            context)
                                                        .languageCode ==
                                                    'kn') &&
                                                (_model.radioButtonValue11 ==
                                                    'ಸಂಪೂರ್ಣವಾಗಿ ಸ್ಪಷ್ಟ/ತಾರ್ಕಿಕ/ಸರಿಯಾದ.')) {
                                              return 'Perfectly clear/logical/correct.';
                                            } else {
                                              return _model.radioButtonValue11;
                                            }
                                          }(),
                                          fsEq2:
                                              _model.ratingBarValue?.toString(),
                                          uid: currentUserReference,
                                          secAengagement: _model.secAengagement,
                                          secBFunctionality:
                                              _model.secBfunctionality,
                                          secCaesthetics: _model.secCaesthetics,
                                          secDinformation:
                                              _model.secDinformation,
                                          secErating: _model.secErating,
                                          objmean: _model.objmean,
                                          subjmean: _model.subjmean,
                                        ));

                                    await currentUserReference!
                                        .update(createUsersRecordData(
                                      feedbackDone: true,
                                    ));
                                  } else {
                                    return;
                                  }

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Feddback Given. Thank YOU!!',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              font: GoogleFonts.outfit(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );

                                  context.goNamed(HomePageWidget.routeName);

                                  safeSetState(() {
                                    _model.radioButtonValueController1?.reset();
                                    _model.radioButtonValueController2?.reset();
                                    _model.radioButtonValueController3?.reset();
                                    _model.radioButtonValueController4?.reset();
                                    _model.radioButtonValueController5?.reset();
                                    _model.radioButtonValueController6?.reset();
                                    _model.radioButtonValueController7?.reset();
                                    _model.radioButtonValueController8?.reset();
                                    _model.radioButtonValueController9?.reset();
                                    _model.radioButtonValueController10
                                        ?.reset();
                                  });
                                },
                          text: FFLocalizations.of(context).getText(
                            '75mvw9ms' /* Submit */,
                          ),
                          options: FFButtonOptions(
                            width: 250.0,
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
                            disabledTextColor:
                                FlutterFlowTheme.of(context).primaryBackground,
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
    );
  }
}

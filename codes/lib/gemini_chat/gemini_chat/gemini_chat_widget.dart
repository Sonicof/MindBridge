import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_streaming.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gemini_chat/chat_bubble/chat_bubble_widget.dart';
import '/gemini_chat/empty_state/empty_state_widget.dart';
import '/gemini_chat/top_header/top_header_widget.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gemini_chat_model.dart';
export 'gemini_chat_model.dart';

class GeminiChatWidget extends StatefulWidget {
  const GeminiChatWidget({super.key});

  static String routeName = 'geminiChat';
  static String routePath = '/geminiChat';

  @override
  State<GeminiChatWidget> createState() => _GeminiChatWidgetState();
}

class _GeminiChatWidgetState extends State<GeminiChatWidget> {
  late GeminiChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeminiChatModel());

    _model.promptTextFieldTextController ??= TextEditingController();
    _model.promptTextFieldFocusNode ??= FocusNode();
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
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: 100.0,
                  height: double.infinity,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.topHeaderModel,
                        updateCallback: () => safeSetState(() {}),
                        child: TopHeaderWidget(
                          hideOptionalMenuItems: false,
                          hasBackNav: true,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(),
                                child: Builder(
                                  builder: (context) {
                                    final message = FFAppState().chat.toList();
                                    if (message.isEmpty) {
                                      return Center(
                                        child: Container(
                                          width: 150.0,
                                          height: 150.0,
                                          child: EmptyStateWidget(),
                                        ),
                                      );
                                    }

                                    return ListView.builder(
                                      padding: EdgeInsets.fromLTRB(
                                        0,
                                        0,
                                        0,
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointSmall
                                              ? 105.0
                                              : 150.0,
                                          150.0,
                                        ),
                                      ),
                                      scrollDirection: Axis.vertical,
                                      itemCount: message.length,
                                      itemBuilder: (context, messageIndex) {
                                        final messageItem =
                                            message[messageIndex];
                                        return ChatBubbleWidget(
                                          key: Key(
                                              'Keywki_${messageIndex}_of_${message.length}'),
                                          message: messageItem,
                                        );
                                      },
                                      controller: _model
                                          .chatListviewScrollableScrollController,
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 3.0,
                                      sigmaY: 3.0,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 100.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            child: Container(
                                              constraints: BoxConstraints(
                                                maxWidth: 850.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    30.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 222.0,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .promptTextFieldTextController,
                                                            focusNode: _model
                                                                .promptTextFieldFocusNode,
                                                            onFieldSubmitted:
                                                                (_) async {
                                                              FFAppState()
                                                                      .prompt =
                                                                  _model
                                                                      .promptTextFieldTextController
                                                                      .text;
                                                              FFAppState()
                                                                  .addToChat(
                                                                      MessageStruct(
                                                                text: _model
                                                                    .promptTextFieldTextController
                                                                    .text,
                                                                role: 'user',
                                                              ));
                                                              safeSetState(
                                                                  () {});
                                                              safeSetState(() {
                                                                _model
                                                                    .promptTextFieldTextController
                                                                    ?.clear();
                                                              });
                                                              await Future
                                                                  .delayed(
                                                                Duration(
                                                                  milliseconds:
                                                                      500,
                                                                ),
                                                              );
                                                              await _model
                                                                  .chatListviewScrollableScrollController
                                                                  ?.animateTo(
                                                                _model
                                                                    .chatListviewScrollableScrollController!
                                                                    .position
                                                                    .maxScrollExtent,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                                curve:
                                                                    Curves.ease,
                                                              );
                                                              FFAppState()
                                                                  .addToChat(
                                                                      MessageStruct(
                                                                text: '',
                                                                role: 'model',
                                                              ));
                                                              safeSetState(
                                                                  () {});
                                                              _model.flashResponse =
                                                                  await GeminiFlashAPICall
                                                                      .call(
                                                                apiKey: FFAppState()
                                                                    .geminiApiKey,
                                                                messagesJson: functions
                                                                    .formatMessages(
                                                                        FFAppState()
                                                                            .chat
                                                                            .toList()),
                                                                systemMessage:
                                                                    FFAppState()
                                                                        .systemMessage,
                                                              );
                                                              if (_model
                                                                      .flashResponse
                                                                      ?.succeeded ??
                                                                  true) {
                                                                final streamSubscription = _model
                                                                    .flashResponse
                                                                    ?.streamedResponse
                                                                    ?.stream
                                                                    .transform(utf8
                                                                        .decoder)
                                                                    .transform(
                                                                        const LineSplitter())
                                                                    .transform(
                                                                        ServerSentEventLineTransformer())
                                                                    .map((m) =>
                                                                        ResponseStreamMessage(
                                                                            message:
                                                                                m))
                                                                    .listen(
                                                                  (onMessageInput) async {
                                                                    FFAppState()
                                                                        .updateChatAtIndex(
                                                                      FFAppState()
                                                                              .chat
                                                                              .length -
                                                                          1,
                                                                      (e) => e
                                                                        ..text =
                                                                            '${FFAppState().chat.elementAtOrNull(FFAppState().chat.length - 1)?.text}${GeminiFlashAPICall.segment(
                                                                          onMessageInput
                                                                              .serverSentEvent
                                                                              .jsonData,
                                                                        )}',
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                    unawaited(
                                                                      () async {
                                                                        await _model
                                                                            .chatListviewScrollableScrollController
                                                                            ?.animateTo(
                                                                          _model
                                                                              .chatListviewScrollableScrollController!
                                                                              .position
                                                                              .maxScrollExtent,
                                                                          duration:
                                                                              Duration(milliseconds: 150),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                      }(),
                                                                    );
                                                                  },
                                                                  onError:
                                                                      (onErrorInput) async {
                                                                    FFAppState()
                                                                        .addToChat(
                                                                            MessageStruct(
                                                                      text:
                                                                          'Oops, sorry that didn\'t go through. Try again or refresh!',
                                                                      role:
                                                                          'model',
                                                                    ));
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  onDone:
                                                                      () async {
                                                                    await _model
                                                                        .chatListviewScrollableScrollController
                                                                        ?.animateTo(
                                                                      _model
                                                                          .chatListviewScrollableScrollController!
                                                                          .position
                                                                          .maxScrollExtent,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              300),
                                                                      curve: Curves
                                                                          .ease,
                                                                    );
                                                                  },
                                                                );
                                                              }

                                                              await Future
                                                                  .delayed(
                                                                Duration(
                                                                  milliseconds:
                                                                      300,
                                                                ),
                                                              );
                                                              await _model
                                                                  .chatListviewScrollableScrollController
                                                                  ?.animateTo(
                                                                _model
                                                                    .chatListviewScrollableScrollController!
                                                                    .position
                                                                    .maxScrollExtent,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                                curve:
                                                                    Curves.ease,
                                                              );

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            autofocus: true,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelStyle:
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
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              hintText:
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                'usd5rlg3' /* Write your prompt here... */,
                                                              ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              enabledBorder:
                                                                  InputBorder
                                                                      .none,
                                                              focusedBorder:
                                                                  InputBorder
                                                                      .none,
                                                              errorBorder:
                                                                  InputBorder
                                                                      .none,
                                                              focusedErrorBorder:
                                                                  InputBorder
                                                                      .none,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            validator: _model
                                                                .promptTextFieldTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
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
                            ],
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
    );
  }
}

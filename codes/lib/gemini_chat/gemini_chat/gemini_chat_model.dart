import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gemini_chat/top_header/top_header_widget.dart';
import 'gemini_chat_widget.dart' show GeminiChatWidget;
import 'package:flutter/material.dart';

class GeminiChatModel extends FlutterFlowModel<GeminiChatWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopHeader component.
  late TopHeaderModel topHeaderModel;
  // State field(s) for chat_listview_scrollable widget.
  ScrollController? chatListviewScrollableScrollController;
  // State field(s) for PromptTextField widget.
  FocusNode? promptTextFieldFocusNode;
  TextEditingController? promptTextFieldTextController;
  String? Function(BuildContext, String?)?
      promptTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Gemini Flash API)] action in PromptTextField widget.
  ApiCallResponse? flashResponse;

  @override
  void initState(BuildContext context) {
    topHeaderModel = createModel(context, () => TopHeaderModel());
    chatListviewScrollableScrollController = ScrollController();
  }

  @override
  void dispose() {
    topHeaderModel.dispose();
    chatListviewScrollableScrollController?.dispose();
    promptTextFieldFocusNode?.dispose();
    promptTextFieldTextController?.dispose();
  }
}

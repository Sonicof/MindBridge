import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future clearChatHistory(BuildContext context) async {
  FFAppState().prompt = '';
  FFAppState().chat = [];
  FFAppState().update(() {});
}

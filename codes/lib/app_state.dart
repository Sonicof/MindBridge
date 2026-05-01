import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _whoisusing = prefs.getString('ff_whoisusing') ?? _whoisusing;
    });
    _safeInit(() {
      _language = prefs.getString('ff_language') ?? _language;
    });
    _safeInit(() {
      _systemMessage = prefs.getString('ff_systemMessage') ?? _systemMessage;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _dropdown1section4 = false;
  bool get dropdown1section4 => _dropdown1section4;
  set dropdown1section4(bool value) {
    _dropdown1section4 = value;
  }

  bool _dropdown2section4 = false;
  bool get dropdown2section4 => _dropdown2section4;
  set dropdown2section4(bool value) {
    _dropdown2section4 = value;
  }

  bool _dropdown3section4 = false;
  bool get dropdown3section4 => _dropdown3section4;
  set dropdown3section4(bool value) {
    _dropdown3section4 = value;
  }

  bool _dropdown4section4 = false;
  bool get dropdown4section4 => _dropdown4section4;
  set dropdown4section4(bool value) {
    _dropdown4section4 = value;
  }

  int _s2eval = 0;
  int get s2eval => _s2eval;
  set s2eval(int value) {
    _s2eval = value;
  }

  int _s3eval = 0;
  int get s3eval => _s3eval;
  set s3eval(int value) {
    _s3eval = value;
  }

  double _s23eval = 0.0;
  double get s23eval => _s23eval;
  set s23eval(double value) {
    _s23eval = value;
  }

  int _s4evalReading = 0;
  int get s4evalReading => _s4evalReading;
  set s4evalReading(int value) {
    _s4evalReading = value;
  }

  int _s4evalWritng = 0;
  int get s4evalWritng => _s4evalWritng;
  set s4evalWritng(int value) {
    _s4evalWritng = value;
  }

  int _s4evalMath = 0;
  int get s4evalMath => _s4evalMath;
  set s4evalMath(int value) {
    _s4evalMath = value;
  }

  int _s4evalGeneral = 0;
  int get s4evalGeneral => _s4evalGeneral;
  set s4evalGeneral(int value) {
    _s4evalGeneral = value;
  }

  int _s4Combined = 0;
  int get s4Combined => _s4Combined;
  set s4Combined(int value) {
    _s4Combined = value;
  }

  bool _dropfA = false;
  bool get dropfA => _dropfA;
  set dropfA(bool value) {
    _dropfA = value;
  }

  bool _dropfB = false;
  bool get dropfB => _dropfB;
  set dropfB(bool value) {
    _dropfB = value;
  }

  bool _dropfC = false;
  bool get dropfC => _dropfC;
  set dropfC(bool value) {
    _dropfC = value;
  }

  bool _dropfD = false;
  bool get dropfD => _dropfD;
  set dropfD(bool value) {
    _dropfD = value;
  }

  bool _dropfE = false;
  bool get dropfE => _dropfE;
  set dropfE(bool value) {
    _dropfE = value;
  }

  int _t1 = 0;
  int get t1 => _t1;
  set t1(int value) {
    _t1 = value;
  }

  int _t2 = 0;
  int get t2 => _t2;
  set t2(int value) {
    _t2 = value;
  }

  int _t3 = 0;
  int get t3 => _t3;
  set t3(int value) {
    _t3 = value;
  }

  int _t4 = 0;
  int get t4 => _t4;
  set t4(int value) {
    _t4 = value;
  }

  String _whoisusing = '';
  String get whoisusing => _whoisusing;
  set whoisusing(String value) {
    _whoisusing = value;
    prefs.setString('ff_whoisusing', value);
  }

  String _nonSpecificIndicator = '';
  String get nonSpecificIndicator => _nonSpecificIndicator;
  set nonSpecificIndicator(String value) {
    _nonSpecificIndicator = value;
  }

  String _specificIndicator = '';
  String get specificIndicator => _specificIndicator;
  set specificIndicator(String value) {
    _specificIndicator = value;
  }

  bool _specificDataRetrivalSearchActive = false;
  bool get specificDataRetrivalSearchActive =>
      _specificDataRetrivalSearchActive;
  set specificDataRetrivalSearchActive(bool value) {
    _specificDataRetrivalSearchActive = value;
  }

  bool _dataRetrivalTeacherSearchActive = false;
  bool get dataRetrivalTeacherSearchActive => _dataRetrivalTeacherSearchActive;
  set dataRetrivalTeacherSearchActive(bool value) {
    _dataRetrivalTeacherSearchActive = value;
  }

  bool _dataRetrivalPrincipalSearchActive = false;
  bool get dataRetrivalPrincipalSearchActive =>
      _dataRetrivalPrincipalSearchActive;
  set dataRetrivalPrincipalSearchActive(bool value) {
    _dataRetrivalPrincipalSearchActive = value;
  }

  bool _teacherSearchInPrincipalTab = false;
  bool get teacherSearchInPrincipalTab => _teacherSearchInPrincipalTab;
  set teacherSearchInPrincipalTab(bool value) {
    _teacherSearchInPrincipalTab = value;
  }

  String _language = 'en';
  String get language => _language;
  set language(String value) {
    _language = value;
    prefs.setString('ff_language', value);
  }

  bool _connection = true;
  bool get connection => _connection;
  set connection(bool value) {
    _connection = value;
  }

  bool _timerCheck = true;
  bool get timerCheck => _timerCheck;
  set timerCheck(bool value) {
    _timerCheck = value;
  }

  int _demo = 0;
  int get demo => _demo;
  set demo(int value) {
    _demo = value;
  }

  String _geminiApiKey = '*******';
  String get geminiApiKey => _geminiApiKey;
  set geminiApiKey(String value) {
    _geminiApiKey = value;
  }

  String _selectedModel = 'Gemini 2.0 Flash (API)';
  String get selectedModel => _selectedModel;
  set selectedModel(String value) {
    _selectedModel = value;
  }

  List<MessageStruct> _chat = [];
  List<MessageStruct> get chat => _chat;
  set chat(List<MessageStruct> value) {
    _chat = value;
  }

  void addToChat(MessageStruct value) {
    chat.add(value);
  }

  void removeFromChat(MessageStruct value) {
    chat.remove(value);
  }

  void removeAtIndexFromChat(int index) {
    chat.removeAt(index);
  }

  void updateChatAtIndex(
    int index,
    MessageStruct Function(MessageStruct) updateFn,
  ) {
    chat[index] = updateFn(_chat[index]);
  }

  void insertAtIndexInChat(int index, MessageStruct value) {
    chat.insert(index, value);
  }

  String _prompt = '';
  String get prompt => _prompt;
  set prompt(String value) {
    _prompt = value;
  }

  String _systemMessage =
      'Role: You are a warm, supportive, and grounded Virtual Tutor for parents. You act as a companion, not a reporting tool.\n\nThe Golden Rule:\n\nIf the user says \"Hi,\" \"Hello,\" or starts with a general greeting, you must respond ONLY with a short, sweet greeting and a question about how they or their child are doing.\n\nDO NOT mention scores, percentages, or disabilities in the very first greeting. Wait for the conversation to flow.\n\nInternal Knowledge (For reference only):\nYou have historical data for this child: Dyslexia improved (72% to 38%), Dysgraphia (45% to 35%), and Dyscalculia (60% to 50%). Lower scores = better progress.\n\nConversational Flow:\n\nFirst Message: Just a warm \"Hello\" and empathy. (e.g., \"Hi there! So glad to see you. How has your day been with the little one?\")\n\nFollow-up: Only mention one \"Win\" at a time (e.g., \"I was just looking at the progress—reading is really starting to click for them!\").\n\nActivities: Suggest one multisensory task using Indian household items (like rajma beans or a tray of salt) only when the parent is ready for a task.\n\nTone:\n\nBe a \"coach,\" not a \"bluffer.\"\n\nUse Indian context (Rupees, NIMHANS helpline for stress).\n\nIf the parent is happy, celebrate. If they are stressed, be the calm voice in the room.';
  String get systemMessage => _systemMessage;
  set systemMessage(String value) {
    _systemMessage = value;
    prefs.setString('ff_systemMessage', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

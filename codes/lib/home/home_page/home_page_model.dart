import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<String> nameList = [];
  void addToNameList(String item) => nameList.add(item);
  void removeFromNameList(String item) => nameList.remove(item);
  void removeAtIndexFromNameList(int index) => nameList.removeAt(index);
  void insertAtIndexInNameList(int index, String item) =>
      nameList.insert(index, item);
  void updateNameListAtIndex(int index, Function(String) updateFn) =>
      nameList[index] = updateFn(nameList[index]);

  bool teachersearch = false;

  List<String> nameslist1 = [];
  void addToNameslist1(String item) => nameslist1.add(item);
  void removeFromNameslist1(String item) => nameslist1.remove(item);
  void removeAtIndexFromNameslist1(int index) => nameslist1.removeAt(index);
  void insertAtIndexInNameslist1(int index, String item) =>
      nameslist1.insert(index, item);
  void updateNameslist1AtIndex(int index, Function(String) updateFn) =>
      nameslist1[index] = updateFn(nameslist1[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - checkInternet] action in homePage widget.
  bool? internet;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

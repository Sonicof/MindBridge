import '/flutter_flow/flutter_flow_util.dart';
import 'data_retrival_teacher_widget.dart' show DataRetrivalTeacherWidget;
import 'package:flutter/material.dart';

class DataRetrivalTeacherModel
    extends FlutterFlowModel<DataRetrivalTeacherWidget> {
  ///  Local state fields for this page.

  List<int> dyslexia = [40, 55, 35, 20];
  void addToDyslexia(int item) => dyslexia.add(item);
  void removeFromDyslexia(int item) => dyslexia.remove(item);
  void removeAtIndexFromDyslexia(int index) => dyslexia.removeAt(index);
  void insertAtIndexInDyslexia(int index, int item) =>
      dyslexia.insert(index, item);
  void updateDyslexiaAtIndex(int index, Function(int) updateFn) =>
      dyslexia[index] = updateFn(dyslexia[index]);

  bool childSearch = false;

  List<int> dysgraphia = [60, 42, 31, 50];
  void addToDysgraphia(int item) => dysgraphia.add(item);
  void removeFromDysgraphia(int item) => dysgraphia.remove(item);
  void removeAtIndexFromDysgraphia(int index) => dysgraphia.removeAt(index);
  void insertAtIndexInDysgraphia(int index, int item) =>
      dysgraphia.insert(index, item);
  void updateDysgraphiaAtIndex(int index, Function(int) updateFn) =>
      dysgraphia[index] = updateFn(dysgraphia[index]);

  List<int> dyscalculia = [10, 5, 30, 15];
  void addToDyscalculia(int item) => dyscalculia.add(item);
  void removeFromDyscalculia(int item) => dyscalculia.remove(item);
  void removeAtIndexFromDyscalculia(int index) => dyscalculia.removeAt(index);
  void insertAtIndexInDyscalculia(int index, int item) =>
      dyscalculia.insert(index, item);
  void updateDyscalculiaAtIndex(int index, Function(int) updateFn) =>
      dyscalculia[index] = updateFn(dyscalculia[index]);

  List<int> timeFrame = [1, 2, 3, 4];
  void addToTimeFrame(int item) => timeFrame.add(item);
  void removeFromTimeFrame(int item) => timeFrame.remove(item);
  void removeAtIndexFromTimeFrame(int index) => timeFrame.removeAt(index);
  void insertAtIndexInTimeFrame(int index, int item) =>
      timeFrame.insert(index, item);
  void updateTimeFrameAtIndex(int index, Function(int) updateFn) =>
      timeFrame[index] = updateFn(timeFrame[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}

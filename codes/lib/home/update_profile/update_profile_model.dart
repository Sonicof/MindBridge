import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_profile_widget.dart' show UpdateProfileWidget;
import 'package:flutter/material.dart';

class UpdateProfileModel extends FlutterFlowModel<UpdateProfileWidget> {
  ///  Local state fields for this page.

  List<String> fn = [];
  void addToFn(String item) => fn.add(item);
  void removeFromFn(String item) => fn.remove(item);
  void removeAtIndexFromFn(int index) => fn.removeAt(index);
  void insertAtIndexInFn(int index, String item) => fn.insert(index, item);
  void updateFnAtIndex(int index, Function(String) updateFn) =>
      fn[index] = updateFn(fn[index]);

  List<String> ln = [];
  void addToLn(String item) => ln.add(item);
  void removeFromLn(String item) => ln.remove(item);
  void removeAtIndexFromLn(int index) => ln.removeAt(index);
  void insertAtIndexInLn(int index, String item) => ln.insert(index, item);
  void updateLnAtIndex(int index, Function(String) updateFn) =>
      ln[index] = updateFn(ln[index]);

  List<String> fulln = [];
  void addToFulln(String item) => fulln.add(item);
  void removeFromFulln(String item) => fulln.remove(item);
  void removeAtIndexFromFulln(int index) => fulln.removeAt(index);
  void insertAtIndexInFulln(int index, String item) =>
      fulln.insert(index, item);
  void updateFullnAtIndex(int index, Function(String) updateFn) =>
      fulln[index] = updateFn(fulln[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'eqopz3ja' /* First Name is Required */,
      );
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

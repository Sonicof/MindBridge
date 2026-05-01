import '/flutter_flow/flutter_flow_util.dart';
import '/sections/bullet_point/bullet_point_widget.dart';
import '/index.dart';
import 'result1_widget.dart' show Result1Widget;
import 'package:flutter/material.dart';

class Result1Model extends FlutterFlowModel<Result1Widget> {
  ///  Local state fields for this page.

  List<String> label = ['Dyslexia', 'Dyscalculia', 'Dysgraphia'];
  void addToLabel(String item) => label.add(item);
  void removeFromLabel(String item) => label.remove(item);
  void removeAtIndexFromLabel(int index) => label.removeAt(index);
  void insertAtIndexInLabel(int index, String item) =>
      label.insert(index, item);
  void updateLabelAtIndex(int index, Function(String) updateFn) =>
      label[index] = updateFn(label[index]);

  List<int> values = [74, 48, 90];
  void addToValues(int item) => values.add(item);
  void removeFromValues(int item) => values.remove(item);
  void removeAtIndexFromValues(int index) => values.removeAt(index);
  void insertAtIndexInValues(int index, int item) => values.insert(index, item);
  void updateValuesAtIndex(int index, Function(int) updateFn) =>
      values[index] = updateFn(values[index]);

  int? one = 60;

  int? two = 25;

  int? three = 15;

  ///  State fields for stateful widgets in this page.

  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel1;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel2;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel3;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel4;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel5;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel6;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel7;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel8;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel9;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel10;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel11;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel12;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel13;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel14;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel15;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel16;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel17;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel18;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel19;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel20;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel21;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel22;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel23;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel24;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel25;
  // Model for BulletPoint component.
  late BulletPointModel bulletPointModel26;

  @override
  void initState(BuildContext context) {
    bulletPointModel1 = createModel(context, () => BulletPointModel());
    bulletPointModel2 = createModel(context, () => BulletPointModel());
    bulletPointModel3 = createModel(context, () => BulletPointModel());
    bulletPointModel4 = createModel(context, () => BulletPointModel());
    bulletPointModel5 = createModel(context, () => BulletPointModel());
    bulletPointModel6 = createModel(context, () => BulletPointModel());
    bulletPointModel7 = createModel(context, () => BulletPointModel());
    bulletPointModel8 = createModel(context, () => BulletPointModel());
    bulletPointModel9 = createModel(context, () => BulletPointModel());
    bulletPointModel10 = createModel(context, () => BulletPointModel());
    bulletPointModel11 = createModel(context, () => BulletPointModel());
    bulletPointModel12 = createModel(context, () => BulletPointModel());
    bulletPointModel13 = createModel(context, () => BulletPointModel());
    bulletPointModel14 = createModel(context, () => BulletPointModel());
    bulletPointModel15 = createModel(context, () => BulletPointModel());
    bulletPointModel16 = createModel(context, () => BulletPointModel());
    bulletPointModel17 = createModel(context, () => BulletPointModel());
    bulletPointModel18 = createModel(context, () => BulletPointModel());
    bulletPointModel19 = createModel(context, () => BulletPointModel());
    bulletPointModel20 = createModel(context, () => BulletPointModel());
    bulletPointModel21 = createModel(context, () => BulletPointModel());
    bulletPointModel22 = createModel(context, () => BulletPointModel());
    bulletPointModel23 = createModel(context, () => BulletPointModel());
    bulletPointModel24 = createModel(context, () => BulletPointModel());
    bulletPointModel25 = createModel(context, () => BulletPointModel());
    bulletPointModel26 = createModel(context, () => BulletPointModel());
  }

  @override
  void dispose() {
    bulletPointModel1.dispose();
    bulletPointModel2.dispose();
    bulletPointModel3.dispose();
    bulletPointModel4.dispose();
    bulletPointModel5.dispose();
    bulletPointModel6.dispose();
    bulletPointModel7.dispose();
    bulletPointModel8.dispose();
    bulletPointModel9.dispose();
    bulletPointModel10.dispose();
    bulletPointModel11.dispose();
    bulletPointModel12.dispose();
    bulletPointModel13.dispose();
    bulletPointModel14.dispose();
    bulletPointModel15.dispose();
    bulletPointModel16.dispose();
    bulletPointModel17.dispose();
    bulletPointModel18.dispose();
    bulletPointModel19.dispose();
    bulletPointModel20.dispose();
    bulletPointModel21.dispose();
    bulletPointModel22.dispose();
    bulletPointModel23.dispose();
    bulletPointModel24.dispose();
    bulletPointModel25.dispose();
    bulletPointModel26.dispose();
  }
}

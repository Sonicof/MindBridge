// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DictStruct extends FFFirebaseStruct {
  DictStruct({
    double? severityScore,
    String? diagnosis,
    String? severityLevel,
    List<String>? detailedAnalysis,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _severityScore = severityScore,
        _diagnosis = diagnosis,
        _severityLevel = severityLevel,
        _detailedAnalysis = detailedAnalysis,
        super(firestoreUtilData);

  // "severity_score" field.
  double? _severityScore;
  double get severityScore => _severityScore ?? 0.0;
  set severityScore(double? val) => _severityScore = val;

  void incrementSeverityScore(double amount) =>
      severityScore = severityScore + amount;

  bool hasSeverityScore() => _severityScore != null;

  // "diagnosis" field.
  String? _diagnosis;
  String get diagnosis => _diagnosis ?? '';
  set diagnosis(String? val) => _diagnosis = val;

  bool hasDiagnosis() => _diagnosis != null;

  // "severity_level" field.
  String? _severityLevel;
  String get severityLevel => _severityLevel ?? '';
  set severityLevel(String? val) => _severityLevel = val;

  bool hasSeverityLevel() => _severityLevel != null;

  // "detailed_analysis" field.
  List<String>? _detailedAnalysis;
  List<String> get detailedAnalysis => _detailedAnalysis ?? const [];
  set detailedAnalysis(List<String>? val) => _detailedAnalysis = val;

  void updateDetailedAnalysis(Function(List<String>) updateFn) {
    updateFn(_detailedAnalysis ??= []);
  }

  bool hasDetailedAnalysis() => _detailedAnalysis != null;

  static DictStruct fromMap(Map<String, dynamic> data) => DictStruct(
        severityScore: castToType<double>(data['severity_score']),
        diagnosis: data['diagnosis'] as String?,
        severityLevel: data['severity_level'] as String?,
        detailedAnalysis: getDataList(data['detailed_analysis']),
      );

  static DictStruct? maybeFromMap(dynamic data) =>
      data is Map ? DictStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'severity_score': _severityScore,
        'diagnosis': _diagnosis,
        'severity_level': _severityLevel,
        'detailed_analysis': _detailedAnalysis,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'severity_score': serializeParam(
          _severityScore,
          ParamType.double,
        ),
        'diagnosis': serializeParam(
          _diagnosis,
          ParamType.String,
        ),
        'severity_level': serializeParam(
          _severityLevel,
          ParamType.String,
        ),
        'detailed_analysis': serializeParam(
          _detailedAnalysis,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static DictStruct fromSerializableMap(Map<String, dynamic> data) =>
      DictStruct(
        severityScore: deserializeParam(
          data['severity_score'],
          ParamType.double,
          false,
        ),
        diagnosis: deserializeParam(
          data['diagnosis'],
          ParamType.String,
          false,
        ),
        severityLevel: deserializeParam(
          data['severity_level'],
          ParamType.String,
          false,
        ),
        detailedAnalysis: deserializeParam<String>(
          data['detailed_analysis'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'DictStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DictStruct &&
        severityScore == other.severityScore &&
        diagnosis == other.diagnosis &&
        severityLevel == other.severityLevel &&
        listEquality.equals(detailedAnalysis, other.detailedAnalysis);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([severityScore, diagnosis, severityLevel, detailedAnalysis]);
}

DictStruct createDictStruct({
  double? severityScore,
  String? diagnosis,
  String? severityLevel,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DictStruct(
      severityScore: severityScore,
      diagnosis: diagnosis,
      severityLevel: severityLevel,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DictStruct? updateDictStruct(
  DictStruct? dict, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dict
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDictStructData(
  Map<String, dynamic> firestoreData,
  DictStruct? dict,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dict == null) {
    return;
  }
  if (dict.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && dict.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dictData = getDictFirestoreData(dict, forFieldValue);
  final nestedData = dictData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dict.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDictFirestoreData(
  DictStruct? dict, [
  bool forFieldValue = false,
]) {
  if (dict == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dict.toMap());

  // Add any Firestore field values
  mapToFirestore(dict.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDictListFirestoreData(
  List<DictStruct>? dicts,
) =>
    dicts?.map((e) => getDictFirestoreData(e, true)).toList() ?? [];

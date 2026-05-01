import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoryRecord extends FirestoreRecord {
  HistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "test_type" field.
  String? _testType;
  String get testType => _testType ?? '';
  bool hasTestType() => _testType != null;

  // "severity_score" field.
  String? _severityScore;
  String get severityScore => _severityScore ?? '';
  bool hasSeverityScore() => _severityScore != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "recommendation" field.
  List<String>? _recommendation;
  List<String> get recommendation => _recommendation ?? const [];
  bool hasRecommendation() => _recommendation != null;

  // "colourCode" field.
  String? _colourCode;
  String get colourCode => _colourCode ?? '';
  bool hasColourCode() => _colourCode != null;

  void _initializeFields() {
    _testType = snapshotData['test_type'] as String?;
    _severityScore = snapshotData['severity_score'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _recommendation = getDataList(snapshotData['recommendation']);
    _colourCode = snapshotData['colourCode'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('history');

  static Stream<HistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoryRecord.fromSnapshot(s));

  static Future<HistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistoryRecord.fromSnapshot(s));

  static HistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoryRecordData({
  String? testType,
  String? severityScore,
  DateTime? date,
  DocumentReference? uid,
  String? colourCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'test_type': testType,
      'severity_score': severityScore,
      'date': date,
      'uid': uid,
      'colourCode': colourCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistoryRecordDocumentEquality implements Equality<HistoryRecord> {
  const HistoryRecordDocumentEquality();

  @override
  bool equals(HistoryRecord? e1, HistoryRecord? e2) {
    const listEquality = ListEquality();
    return e1?.testType == e2?.testType &&
        e1?.severityScore == e2?.severityScore &&
        e1?.date == e2?.date &&
        e1?.uid == e2?.uid &&
        listEquality.equals(e1?.recommendation, e2?.recommendation) &&
        e1?.colourCode == e2?.colourCode;
  }

  @override
  int hash(HistoryRecord? e) => const ListEquality().hash([
        e?.testType,
        e?.severityScore,
        e?.date,
        e?.uid,
        e?.recommendation,
        e?.colourCode
      ]);

  @override
  bool isValidKey(Object? o) => o is HistoryRecord;
}

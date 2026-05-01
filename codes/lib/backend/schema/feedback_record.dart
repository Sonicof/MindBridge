import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeedbackRecord extends FirestoreRecord {
  FeedbackRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fsAq1" field.
  String? _fsAq1;
  String get fsAq1 => _fsAq1 ?? '';
  bool hasFsAq1() => _fsAq1 != null;

  // "fsAq2" field.
  String? _fsAq2;
  String get fsAq2 => _fsAq2 ?? '';
  bool hasFsAq2() => _fsAq2 != null;

  // "fsAq3" field.
  String? _fsAq3;
  String get fsAq3 => _fsAq3 ?? '';
  bool hasFsAq3() => _fsAq3 != null;

  // "fsBq1" field.
  String? _fsBq1;
  String get fsBq1 => _fsBq1 ?? '';
  bool hasFsBq1() => _fsBq1 != null;

  // "fsBq2" field.
  String? _fsBq2;
  String get fsBq2 => _fsBq2 ?? '';
  bool hasFsBq2() => _fsBq2 != null;

  // "fsBq3" field.
  String? _fsBq3;
  String get fsBq3 => _fsBq3 ?? '';
  bool hasFsBq3() => _fsBq3 != null;

  // "fsBq4" field.
  String? _fsBq4;
  String get fsBq4 => _fsBq4 ?? '';
  bool hasFsBq4() => _fsBq4 != null;

  // "fsCq1" field.
  String? _fsCq1;
  String get fsCq1 => _fsCq1 ?? '';
  bool hasFsCq1() => _fsCq1 != null;

  // "fsDq1" field.
  String? _fsDq1;
  String get fsDq1 => _fsDq1 ?? '';
  bool hasFsDq1() => _fsDq1 != null;

  // "fsDq2" field.
  String? _fsDq2;
  String get fsDq2 => _fsDq2 ?? '';
  bool hasFsDq2() => _fsDq2 != null;

  // "fsDq3" field.
  String? _fsDq3;
  String get fsDq3 => _fsDq3 ?? '';
  bool hasFsDq3() => _fsDq3 != null;

  // "fsEq2" field.
  String? _fsEq2;
  String get fsEq2 => _fsEq2 ?? '';
  bool hasFsEq2() => _fsEq2 != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "secAengagement" field.
  double? _secAengagement;
  double get secAengagement => _secAengagement ?? 0.0;
  bool hasSecAengagement() => _secAengagement != null;

  // "secBFunctionality" field.
  double? _secBFunctionality;
  double get secBFunctionality => _secBFunctionality ?? 0.0;
  bool hasSecBFunctionality() => _secBFunctionality != null;

  // "secCaesthetics" field.
  double? _secCaesthetics;
  double get secCaesthetics => _secCaesthetics ?? 0.0;
  bool hasSecCaesthetics() => _secCaesthetics != null;

  // "secDinformation" field.
  double? _secDinformation;
  double get secDinformation => _secDinformation ?? 0.0;
  bool hasSecDinformation() => _secDinformation != null;

  // "secErating" field.
  double? _secErating;
  double get secErating => _secErating ?? 0.0;
  bool hasSecErating() => _secErating != null;

  // "objmean" field.
  double? _objmean;
  double get objmean => _objmean ?? 0.0;
  bool hasObjmean() => _objmean != null;

  // "subjmean" field.
  double? _subjmean;
  double get subjmean => _subjmean ?? 0.0;
  bool hasSubjmean() => _subjmean != null;

  void _initializeFields() {
    _fsAq1 = snapshotData['fsAq1'] as String?;
    _fsAq2 = snapshotData['fsAq2'] as String?;
    _fsAq3 = snapshotData['fsAq3'] as String?;
    _fsBq1 = snapshotData['fsBq1'] as String?;
    _fsBq2 = snapshotData['fsBq2'] as String?;
    _fsBq3 = snapshotData['fsBq3'] as String?;
    _fsBq4 = snapshotData['fsBq4'] as String?;
    _fsCq1 = snapshotData['fsCq1'] as String?;
    _fsDq1 = snapshotData['fsDq1'] as String?;
    _fsDq2 = snapshotData['fsDq2'] as String?;
    _fsDq3 = snapshotData['fsDq3'] as String?;
    _fsEq2 = snapshotData['fsEq2'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _secAengagement = castToType<double>(snapshotData['secAengagement']);
    _secBFunctionality = castToType<double>(snapshotData['secBFunctionality']);
    _secCaesthetics = castToType<double>(snapshotData['secCaesthetics']);
    _secDinformation = castToType<double>(snapshotData['secDinformation']);
    _secErating = castToType<double>(snapshotData['secErating']);
    _objmean = castToType<double>(snapshotData['objmean']);
    _subjmean = castToType<double>(snapshotData['subjmean']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedback');

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedbackRecord.fromSnapshot(s));

  static Future<FeedbackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedbackRecord.fromSnapshot(s));

  static FeedbackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedbackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedbackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedbackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedbackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedbackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedbackRecordData({
  String? fsAq1,
  String? fsAq2,
  String? fsAq3,
  String? fsBq1,
  String? fsBq2,
  String? fsBq3,
  String? fsBq4,
  String? fsCq1,
  String? fsDq1,
  String? fsDq2,
  String? fsDq3,
  String? fsEq2,
  DocumentReference? uid,
  double? secAengagement,
  double? secBFunctionality,
  double? secCaesthetics,
  double? secDinformation,
  double? secErating,
  double? objmean,
  double? subjmean,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fsAq1': fsAq1,
      'fsAq2': fsAq2,
      'fsAq3': fsAq3,
      'fsBq1': fsBq1,
      'fsBq2': fsBq2,
      'fsBq3': fsBq3,
      'fsBq4': fsBq4,
      'fsCq1': fsCq1,
      'fsDq1': fsDq1,
      'fsDq2': fsDq2,
      'fsDq3': fsDq3,
      'fsEq2': fsEq2,
      'uid': uid,
      'secAengagement': secAengagement,
      'secBFunctionality': secBFunctionality,
      'secCaesthetics': secCaesthetics,
      'secDinformation': secDinformation,
      'secErating': secErating,
      'objmean': objmean,
      'subjmean': subjmean,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedbackRecordDocumentEquality implements Equality<FeedbackRecord> {
  const FeedbackRecordDocumentEquality();

  @override
  bool equals(FeedbackRecord? e1, FeedbackRecord? e2) {
    return e1?.fsAq1 == e2?.fsAq1 &&
        e1?.fsAq2 == e2?.fsAq2 &&
        e1?.fsAq3 == e2?.fsAq3 &&
        e1?.fsBq1 == e2?.fsBq1 &&
        e1?.fsBq2 == e2?.fsBq2 &&
        e1?.fsBq3 == e2?.fsBq3 &&
        e1?.fsBq4 == e2?.fsBq4 &&
        e1?.fsCq1 == e2?.fsCq1 &&
        e1?.fsDq1 == e2?.fsDq1 &&
        e1?.fsDq2 == e2?.fsDq2 &&
        e1?.fsDq3 == e2?.fsDq3 &&
        e1?.fsEq2 == e2?.fsEq2 &&
        e1?.uid == e2?.uid &&
        e1?.secAengagement == e2?.secAengagement &&
        e1?.secBFunctionality == e2?.secBFunctionality &&
        e1?.secCaesthetics == e2?.secCaesthetics &&
        e1?.secDinformation == e2?.secDinformation &&
        e1?.secErating == e2?.secErating &&
        e1?.objmean == e2?.objmean &&
        e1?.subjmean == e2?.subjmean;
  }

  @override
  int hash(FeedbackRecord? e) => const ListEquality().hash([
        e?.fsAq1,
        e?.fsAq2,
        e?.fsAq3,
        e?.fsBq1,
        e?.fsBq2,
        e?.fsBq3,
        e?.fsBq4,
        e?.fsCq1,
        e?.fsDq1,
        e?.fsDq2,
        e?.fsDq3,
        e?.fsEq2,
        e?.uid,
        e?.secAengagement,
        e?.secBFunctionality,
        e?.secCaesthetics,
        e?.secDinformation,
        e?.secErating,
        e?.objmean,
        e?.subjmean
      ]);

  @override
  bool isValidKey(Object? o) => o is FeedbackRecord;
}

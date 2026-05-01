import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultRecord extends FirestoreRecord {
  ResultRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nonSpecificIndicator" field.
  String? _nonSpecificIndicator;
  String get nonSpecificIndicator => _nonSpecificIndicator ?? '';
  bool hasNonSpecificIndicator() => _nonSpecificIndicator != null;

  // "specificIndicator" field.
  String? _specificIndicator;
  String get specificIndicator => _specificIndicator ?? '';
  bool hasSpecificIndicator() => _specificIndicator != null;

  // "recommendation" field.
  String? _recommendation;
  String get recommendation => _recommendation ?? '';
  bool hasRecommendation() => _recommendation != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "cid" field.
  DocumentReference? _cid;
  DocumentReference? get cid => _cid;
  bool hasCid() => _cid != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "childName" field.
  String? _childName;
  String get childName => _childName ?? '';
  bool hasChildName() => _childName != null;

  // "principalReference" field.
  DocumentReference? _principalReference;
  DocumentReference? get principalReference => _principalReference;
  bool hasPrincipalReference() => _principalReference != null;

  // "teacher_number" field.
  String? _teacherNumber;
  String get teacherNumber => _teacherNumber ?? '';
  bool hasTeacherNumber() => _teacherNumber != null;

  // "colorcode" field.
  String? _colorcode;
  String get colorcode => _colorcode ?? '';
  bool hasColorcode() => _colorcode != null;

  // "recommendationk" field.
  String? _recommendationk;
  String get recommendationk => _recommendationk ?? '';
  bool hasRecommendationk() => _recommendationk != null;

  // "teacher_name" field.
  String? _teacherName;
  String get teacherName => _teacherName ?? '';
  bool hasTeacherName() => _teacherName != null;

  // "colorNohash" field.
  String? _colorNohash;
  String get colorNohash => _colorNohash ?? '';
  bool hasColorNohash() => _colorNohash != null;

  void _initializeFields() {
    _nonSpecificIndicator = snapshotData['nonSpecificIndicator'] as String?;
    _specificIndicator = snapshotData['specificIndicator'] as String?;
    _recommendation = snapshotData['recommendation'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _cid = snapshotData['cid'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _childName = snapshotData['childName'] as String?;
    _principalReference =
        snapshotData['principalReference'] as DocumentReference?;
    _teacherNumber = snapshotData['teacher_number'] as String?;
    _colorcode = snapshotData['colorcode'] as String?;
    _recommendationk = snapshotData['recommendationk'] as String?;
    _teacherName = snapshotData['teacher_name'] as String?;
    _colorNohash = snapshotData['colorNohash'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('result');

  static Stream<ResultRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResultRecord.fromSnapshot(s));

  static Future<ResultRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResultRecord.fromSnapshot(s));

  static ResultRecord fromSnapshot(DocumentSnapshot snapshot) => ResultRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResultRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResultRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResultRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResultRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResultRecordData({
  String? nonSpecificIndicator,
  String? specificIndicator,
  String? recommendation,
  DocumentReference? uid,
  DocumentReference? cid,
  DateTime? timestamp,
  String? childName,
  DocumentReference? principalReference,
  String? teacherNumber,
  String? colorcode,
  String? recommendationk,
  String? teacherName,
  String? colorNohash,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nonSpecificIndicator': nonSpecificIndicator,
      'specificIndicator': specificIndicator,
      'recommendation': recommendation,
      'uid': uid,
      'cid': cid,
      'timestamp': timestamp,
      'childName': childName,
      'principalReference': principalReference,
      'teacher_number': teacherNumber,
      'colorcode': colorcode,
      'recommendationk': recommendationk,
      'teacher_name': teacherName,
      'colorNohash': colorNohash,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResultRecordDocumentEquality implements Equality<ResultRecord> {
  const ResultRecordDocumentEquality();

  @override
  bool equals(ResultRecord? e1, ResultRecord? e2) {
    return e1?.nonSpecificIndicator == e2?.nonSpecificIndicator &&
        e1?.specificIndicator == e2?.specificIndicator &&
        e1?.recommendation == e2?.recommendation &&
        e1?.uid == e2?.uid &&
        e1?.cid == e2?.cid &&
        e1?.timestamp == e2?.timestamp &&
        e1?.childName == e2?.childName &&
        e1?.principalReference == e2?.principalReference &&
        e1?.teacherNumber == e2?.teacherNumber &&
        e1?.colorcode == e2?.colorcode &&
        e1?.recommendationk == e2?.recommendationk &&
        e1?.teacherName == e2?.teacherName &&
        e1?.colorNohash == e2?.colorNohash;
  }

  @override
  int hash(ResultRecord? e) => const ListEquality().hash([
        e?.nonSpecificIndicator,
        e?.specificIndicator,
        e?.recommendation,
        e?.uid,
        e?.cid,
        e?.timestamp,
        e?.childName,
        e?.principalReference,
        e?.teacherNumber,
        e?.colorcode,
        e?.recommendationk,
        e?.teacherName,
        e?.colorNohash
      ]);

  @override
  bool isValidKey(Object? o) => o is ResultRecord;
}

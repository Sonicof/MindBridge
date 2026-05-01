import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Section3Record extends FirestoreRecord {
  Section3Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "s3q1" field.
  String? _s3q1;
  String get s3q1 => _s3q1 ?? '';
  bool hasS3q1() => _s3q1 != null;

  // "s3q2" field.
  String? _s3q2;
  String get s3q2 => _s3q2 ?? '';
  bool hasS3q2() => _s3q2 != null;

  // "s3q3" field.
  String? _s3q3;
  String get s3q3 => _s3q3 ?? '';
  bool hasS3q3() => _s3q3 != null;

  // "s3q4" field.
  String? _s3q4;
  String get s3q4 => _s3q4 ?? '';
  bool hasS3q4() => _s3q4 != null;

  // "s3q5" field.
  String? _s3q5;
  String get s3q5 => _s3q5 ?? '';
  bool hasS3q5() => _s3q5 != null;

  // "s3q6" field.
  String? _s3q6;
  String get s3q6 => _s3q6 ?? '';
  bool hasS3q6() => _s3q6 != null;

  // "s3q7" field.
  String? _s3q7;
  String get s3q7 => _s3q7 ?? '';
  bool hasS3q7() => _s3q7 != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "cid" field.
  DocumentReference? _cid;
  DocumentReference? get cid => _cid;
  bool hasCid() => _cid != null;

  // "s3q1k" field.
  String? _s3q1k;
  String get s3q1k => _s3q1k ?? '';
  bool hasS3q1k() => _s3q1k != null;

  // "s3q2k" field.
  String? _s3q2k;
  String get s3q2k => _s3q2k ?? '';
  bool hasS3q2k() => _s3q2k != null;

  // "s3q3k" field.
  String? _s3q3k;
  String get s3q3k => _s3q3k ?? '';
  bool hasS3q3k() => _s3q3k != null;

  // "s3q4k" field.
  String? _s3q4k;
  String get s3q4k => _s3q4k ?? '';
  bool hasS3q4k() => _s3q4k != null;

  // "s3q5k" field.
  String? _s3q5k;
  String get s3q5k => _s3q5k ?? '';
  bool hasS3q5k() => _s3q5k != null;

  // "s3q6k" field.
  String? _s3q6k;
  String get s3q6k => _s3q6k ?? '';
  bool hasS3q6k() => _s3q6k != null;

  // "s3q7k" field.
  String? _s3q7k;
  String get s3q7k => _s3q7k ?? '';
  bool hasS3q7k() => _s3q7k != null;

  void _initializeFields() {
    _s3q1 = snapshotData['s3q1'] as String?;
    _s3q2 = snapshotData['s3q2'] as String?;
    _s3q3 = snapshotData['s3q3'] as String?;
    _s3q4 = snapshotData['s3q4'] as String?;
    _s3q5 = snapshotData['s3q5'] as String?;
    _s3q6 = snapshotData['s3q6'] as String?;
    _s3q7 = snapshotData['s3q7'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _cid = snapshotData['cid'] as DocumentReference?;
    _s3q1k = snapshotData['s3q1k'] as String?;
    _s3q2k = snapshotData['s3q2k'] as String?;
    _s3q3k = snapshotData['s3q3k'] as String?;
    _s3q4k = snapshotData['s3q4k'] as String?;
    _s3q5k = snapshotData['s3q5k'] as String?;
    _s3q6k = snapshotData['s3q6k'] as String?;
    _s3q7k = snapshotData['s3q7k'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('section3');

  static Stream<Section3Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Section3Record.fromSnapshot(s));

  static Future<Section3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Section3Record.fromSnapshot(s));

  static Section3Record fromSnapshot(DocumentSnapshot snapshot) =>
      Section3Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Section3Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Section3Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Section3Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Section3Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSection3RecordData({
  String? s3q1,
  String? s3q2,
  String? s3q3,
  String? s3q4,
  String? s3q5,
  String? s3q6,
  String? s3q7,
  DocumentReference? uid,
  DocumentReference? cid,
  String? s3q1k,
  String? s3q2k,
  String? s3q3k,
  String? s3q4k,
  String? s3q5k,
  String? s3q6k,
  String? s3q7k,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      's3q1': s3q1,
      's3q2': s3q2,
      's3q3': s3q3,
      's3q4': s3q4,
      's3q5': s3q5,
      's3q6': s3q6,
      's3q7': s3q7,
      'uid': uid,
      'cid': cid,
      's3q1k': s3q1k,
      's3q2k': s3q2k,
      's3q3k': s3q3k,
      's3q4k': s3q4k,
      's3q5k': s3q5k,
      's3q6k': s3q6k,
      's3q7k': s3q7k,
    }.withoutNulls,
  );

  return firestoreData;
}

class Section3RecordDocumentEquality implements Equality<Section3Record> {
  const Section3RecordDocumentEquality();

  @override
  bool equals(Section3Record? e1, Section3Record? e2) {
    return e1?.s3q1 == e2?.s3q1 &&
        e1?.s3q2 == e2?.s3q2 &&
        e1?.s3q3 == e2?.s3q3 &&
        e1?.s3q4 == e2?.s3q4 &&
        e1?.s3q5 == e2?.s3q5 &&
        e1?.s3q6 == e2?.s3q6 &&
        e1?.s3q7 == e2?.s3q7 &&
        e1?.uid == e2?.uid &&
        e1?.cid == e2?.cid &&
        e1?.s3q1k == e2?.s3q1k &&
        e1?.s3q2k == e2?.s3q2k &&
        e1?.s3q3k == e2?.s3q3k &&
        e1?.s3q4k == e2?.s3q4k &&
        e1?.s3q5k == e2?.s3q5k &&
        e1?.s3q6k == e2?.s3q6k &&
        e1?.s3q7k == e2?.s3q7k;
  }

  @override
  int hash(Section3Record? e) => const ListEquality().hash([
        e?.s3q1,
        e?.s3q2,
        e?.s3q3,
        e?.s3q4,
        e?.s3q5,
        e?.s3q6,
        e?.s3q7,
        e?.uid,
        e?.cid,
        e?.s3q1k,
        e?.s3q2k,
        e?.s3q3k,
        e?.s3q4k,
        e?.s3q5k,
        e?.s3q6k,
        e?.s3q7k
      ]);

  @override
  bool isValidKey(Object? o) => o is Section3Record;
}

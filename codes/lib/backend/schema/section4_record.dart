import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Section4Record extends FirestoreRecord {
  Section4Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "s4s1q1" field.
  String? _s4s1q1;
  String get s4s1q1 => _s4s1q1 ?? '';
  bool hasS4s1q1() => _s4s1q1 != null;

  // "s4s1q2" field.
  String? _s4s1q2;
  String get s4s1q2 => _s4s1q2 ?? '';
  bool hasS4s1q2() => _s4s1q2 != null;

  // "s4s1q3" field.
  String? _s4s1q3;
  String get s4s1q3 => _s4s1q3 ?? '';
  bool hasS4s1q3() => _s4s1q3 != null;

  // "s4s1q4" field.
  String? _s4s1q4;
  String get s4s1q4 => _s4s1q4 ?? '';
  bool hasS4s1q4() => _s4s1q4 != null;

  // "s4s1q5" field.
  String? _s4s1q5;
  String get s4s1q5 => _s4s1q5 ?? '';
  bool hasS4s1q5() => _s4s1q5 != null;

  // "s4s2q1" field.
  String? _s4s2q1;
  String get s4s2q1 => _s4s2q1 ?? '';
  bool hasS4s2q1() => _s4s2q1 != null;

  // "s4s2q2" field.
  String? _s4s2q2;
  String get s4s2q2 => _s4s2q2 ?? '';
  bool hasS4s2q2() => _s4s2q2 != null;

  // "s4s2q3" field.
  String? _s4s2q3;
  String get s4s2q3 => _s4s2q3 ?? '';
  bool hasS4s2q3() => _s4s2q3 != null;

  // "s4s2q4" field.
  String? _s4s2q4;
  String get s4s2q4 => _s4s2q4 ?? '';
  bool hasS4s2q4() => _s4s2q4 != null;

  // "s4s2q5" field.
  String? _s4s2q5;
  String get s4s2q5 => _s4s2q5 ?? '';
  bool hasS4s2q5() => _s4s2q5 != null;

  // "s4s3q1" field.
  String? _s4s3q1;
  String get s4s3q1 => _s4s3q1 ?? '';
  bool hasS4s3q1() => _s4s3q1 != null;

  // "s4s3q2" field.
  String? _s4s3q2;
  String get s4s3q2 => _s4s3q2 ?? '';
  bool hasS4s3q2() => _s4s3q2 != null;

  // "s4s3q3" field.
  String? _s4s3q3;
  String get s4s3q3 => _s4s3q3 ?? '';
  bool hasS4s3q3() => _s4s3q3 != null;

  // "s4s3q4" field.
  String? _s4s3q4;
  String get s4s3q4 => _s4s3q4 ?? '';
  bool hasS4s3q4() => _s4s3q4 != null;

  // "s4s3q5" field.
  String? _s4s3q5;
  String get s4s3q5 => _s4s3q5 ?? '';
  bool hasS4s3q5() => _s4s3q5 != null;

  // "s4s4q1" field.
  String? _s4s4q1;
  String get s4s4q1 => _s4s4q1 ?? '';
  bool hasS4s4q1() => _s4s4q1 != null;

  // "s4s4q2" field.
  String? _s4s4q2;
  String get s4s4q2 => _s4s4q2 ?? '';
  bool hasS4s4q2() => _s4s4q2 != null;

  // "s4s4q3" field.
  String? _s4s4q3;
  String get s4s4q3 => _s4s4q3 ?? '';
  bool hasS4s4q3() => _s4s4q3 != null;

  // "s4s4q4" field.
  String? _s4s4q4;
  String get s4s4q4 => _s4s4q4 ?? '';
  bool hasS4s4q4() => _s4s4q4 != null;

  // "s4s4q5" field.
  String? _s4s4q5;
  String get s4s4q5 => _s4s4q5 ?? '';
  bool hasS4s4q5() => _s4s4q5 != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "cid" field.
  DocumentReference? _cid;
  DocumentReference? get cid => _cid;
  bool hasCid() => _cid != null;

  // "s4s1q1k" field.
  String? _s4s1q1k;
  String get s4s1q1k => _s4s1q1k ?? '';
  bool hasS4s1q1k() => _s4s1q1k != null;

  // "s4s1q2k" field.
  String? _s4s1q2k;
  String get s4s1q2k => _s4s1q2k ?? '';
  bool hasS4s1q2k() => _s4s1q2k != null;

  // "s4s1q4k" field.
  String? _s4s1q4k;
  String get s4s1q4k => _s4s1q4k ?? '';
  bool hasS4s1q4k() => _s4s1q4k != null;

  // "s4s1q3k" field.
  String? _s4s1q3k;
  String get s4s1q3k => _s4s1q3k ?? '';
  bool hasS4s1q3k() => _s4s1q3k != null;

  // "s4s1q5k" field.
  String? _s4s1q5k;
  String get s4s1q5k => _s4s1q5k ?? '';
  bool hasS4s1q5k() => _s4s1q5k != null;

  // "s4s2q1k" field.
  String? _s4s2q1k;
  String get s4s2q1k => _s4s2q1k ?? '';
  bool hasS4s2q1k() => _s4s2q1k != null;

  // "s4s2q2k" field.
  String? _s4s2q2k;
  String get s4s2q2k => _s4s2q2k ?? '';
  bool hasS4s2q2k() => _s4s2q2k != null;

  // "s4s2q3k" field.
  String? _s4s2q3k;
  String get s4s2q3k => _s4s2q3k ?? '';
  bool hasS4s2q3k() => _s4s2q3k != null;

  // "s4s2q4k" field.
  String? _s4s2q4k;
  String get s4s2q4k => _s4s2q4k ?? '';
  bool hasS4s2q4k() => _s4s2q4k != null;

  // "s4s2q5k" field.
  String? _s4s2q5k;
  String get s4s2q5k => _s4s2q5k ?? '';
  bool hasS4s2q5k() => _s4s2q5k != null;

  // "s4s3q1k" field.
  String? _s4s3q1k;
  String get s4s3q1k => _s4s3q1k ?? '';
  bool hasS4s3q1k() => _s4s3q1k != null;

  // "s4s3q2k" field.
  String? _s4s3q2k;
  String get s4s3q2k => _s4s3q2k ?? '';
  bool hasS4s3q2k() => _s4s3q2k != null;

  // "s4s3q3k" field.
  String? _s4s3q3k;
  String get s4s3q3k => _s4s3q3k ?? '';
  bool hasS4s3q3k() => _s4s3q3k != null;

  // "s4s3q4k" field.
  String? _s4s3q4k;
  String get s4s3q4k => _s4s3q4k ?? '';
  bool hasS4s3q4k() => _s4s3q4k != null;

  // "s4s3q5k" field.
  String? _s4s3q5k;
  String get s4s3q5k => _s4s3q5k ?? '';
  bool hasS4s3q5k() => _s4s3q5k != null;

  // "s4s4q1k" field.
  String? _s4s4q1k;
  String get s4s4q1k => _s4s4q1k ?? '';
  bool hasS4s4q1k() => _s4s4q1k != null;

  // "s4s4q2k" field.
  String? _s4s4q2k;
  String get s4s4q2k => _s4s4q2k ?? '';
  bool hasS4s4q2k() => _s4s4q2k != null;

  // "s4s4q3k" field.
  String? _s4s4q3k;
  String get s4s4q3k => _s4s4q3k ?? '';
  bool hasS4s4q3k() => _s4s4q3k != null;

  // "s4s4q4k" field.
  String? _s4s4q4k;
  String get s4s4q4k => _s4s4q4k ?? '';
  bool hasS4s4q4k() => _s4s4q4k != null;

  // "s4s4q5k" field.
  String? _s4s4q5k;
  String get s4s4q5k => _s4s4q5k ?? '';
  bool hasS4s4q5k() => _s4s4q5k != null;

  void _initializeFields() {
    _s4s1q1 = snapshotData['s4s1q1'] as String?;
    _s4s1q2 = snapshotData['s4s1q2'] as String?;
    _s4s1q3 = snapshotData['s4s1q3'] as String?;
    _s4s1q4 = snapshotData['s4s1q4'] as String?;
    _s4s1q5 = snapshotData['s4s1q5'] as String?;
    _s4s2q1 = snapshotData['s4s2q1'] as String?;
    _s4s2q2 = snapshotData['s4s2q2'] as String?;
    _s4s2q3 = snapshotData['s4s2q3'] as String?;
    _s4s2q4 = snapshotData['s4s2q4'] as String?;
    _s4s2q5 = snapshotData['s4s2q5'] as String?;
    _s4s3q1 = snapshotData['s4s3q1'] as String?;
    _s4s3q2 = snapshotData['s4s3q2'] as String?;
    _s4s3q3 = snapshotData['s4s3q3'] as String?;
    _s4s3q4 = snapshotData['s4s3q4'] as String?;
    _s4s3q5 = snapshotData['s4s3q5'] as String?;
    _s4s4q1 = snapshotData['s4s4q1'] as String?;
    _s4s4q2 = snapshotData['s4s4q2'] as String?;
    _s4s4q3 = snapshotData['s4s4q3'] as String?;
    _s4s4q4 = snapshotData['s4s4q4'] as String?;
    _s4s4q5 = snapshotData['s4s4q5'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _cid = snapshotData['cid'] as DocumentReference?;
    _s4s1q1k = snapshotData['s4s1q1k'] as String?;
    _s4s1q2k = snapshotData['s4s1q2k'] as String?;
    _s4s1q4k = snapshotData['s4s1q4k'] as String?;
    _s4s1q3k = snapshotData['s4s1q3k'] as String?;
    _s4s1q5k = snapshotData['s4s1q5k'] as String?;
    _s4s2q1k = snapshotData['s4s2q1k'] as String?;
    _s4s2q2k = snapshotData['s4s2q2k'] as String?;
    _s4s2q3k = snapshotData['s4s2q3k'] as String?;
    _s4s2q4k = snapshotData['s4s2q4k'] as String?;
    _s4s2q5k = snapshotData['s4s2q5k'] as String?;
    _s4s3q1k = snapshotData['s4s3q1k'] as String?;
    _s4s3q2k = snapshotData['s4s3q2k'] as String?;
    _s4s3q3k = snapshotData['s4s3q3k'] as String?;
    _s4s3q4k = snapshotData['s4s3q4k'] as String?;
    _s4s3q5k = snapshotData['s4s3q5k'] as String?;
    _s4s4q1k = snapshotData['s4s4q1k'] as String?;
    _s4s4q2k = snapshotData['s4s4q2k'] as String?;
    _s4s4q3k = snapshotData['s4s4q3k'] as String?;
    _s4s4q4k = snapshotData['s4s4q4k'] as String?;
    _s4s4q5k = snapshotData['s4s4q5k'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('section4');

  static Stream<Section4Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Section4Record.fromSnapshot(s));

  static Future<Section4Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Section4Record.fromSnapshot(s));

  static Section4Record fromSnapshot(DocumentSnapshot snapshot) =>
      Section4Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Section4Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Section4Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Section4Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Section4Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSection4RecordData({
  String? s4s1q1,
  String? s4s1q2,
  String? s4s1q3,
  String? s4s1q4,
  String? s4s1q5,
  String? s4s2q1,
  String? s4s2q2,
  String? s4s2q3,
  String? s4s2q4,
  String? s4s2q5,
  String? s4s3q1,
  String? s4s3q2,
  String? s4s3q3,
  String? s4s3q4,
  String? s4s3q5,
  String? s4s4q1,
  String? s4s4q2,
  String? s4s4q3,
  String? s4s4q4,
  String? s4s4q5,
  DocumentReference? uid,
  DocumentReference? cid,
  String? s4s1q1k,
  String? s4s1q2k,
  String? s4s1q4k,
  String? s4s1q3k,
  String? s4s1q5k,
  String? s4s2q1k,
  String? s4s2q2k,
  String? s4s2q3k,
  String? s4s2q4k,
  String? s4s2q5k,
  String? s4s3q1k,
  String? s4s3q2k,
  String? s4s3q3k,
  String? s4s3q4k,
  String? s4s3q5k,
  String? s4s4q1k,
  String? s4s4q2k,
  String? s4s4q3k,
  String? s4s4q4k,
  String? s4s4q5k,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      's4s1q1': s4s1q1,
      's4s1q2': s4s1q2,
      's4s1q3': s4s1q3,
      's4s1q4': s4s1q4,
      's4s1q5': s4s1q5,
      's4s2q1': s4s2q1,
      's4s2q2': s4s2q2,
      's4s2q3': s4s2q3,
      's4s2q4': s4s2q4,
      's4s2q5': s4s2q5,
      's4s3q1': s4s3q1,
      's4s3q2': s4s3q2,
      's4s3q3': s4s3q3,
      's4s3q4': s4s3q4,
      's4s3q5': s4s3q5,
      's4s4q1': s4s4q1,
      's4s4q2': s4s4q2,
      's4s4q3': s4s4q3,
      's4s4q4': s4s4q4,
      's4s4q5': s4s4q5,
      'uid': uid,
      'cid': cid,
      's4s1q1k': s4s1q1k,
      's4s1q2k': s4s1q2k,
      's4s1q4k': s4s1q4k,
      's4s1q3k': s4s1q3k,
      's4s1q5k': s4s1q5k,
      's4s2q1k': s4s2q1k,
      's4s2q2k': s4s2q2k,
      's4s2q3k': s4s2q3k,
      's4s2q4k': s4s2q4k,
      's4s2q5k': s4s2q5k,
      's4s3q1k': s4s3q1k,
      's4s3q2k': s4s3q2k,
      's4s3q3k': s4s3q3k,
      's4s3q4k': s4s3q4k,
      's4s3q5k': s4s3q5k,
      's4s4q1k': s4s4q1k,
      's4s4q2k': s4s4q2k,
      's4s4q3k': s4s4q3k,
      's4s4q4k': s4s4q4k,
      's4s4q5k': s4s4q5k,
    }.withoutNulls,
  );

  return firestoreData;
}

class Section4RecordDocumentEquality implements Equality<Section4Record> {
  const Section4RecordDocumentEquality();

  @override
  bool equals(Section4Record? e1, Section4Record? e2) {
    return e1?.s4s1q1 == e2?.s4s1q1 &&
        e1?.s4s1q2 == e2?.s4s1q2 &&
        e1?.s4s1q3 == e2?.s4s1q3 &&
        e1?.s4s1q4 == e2?.s4s1q4 &&
        e1?.s4s1q5 == e2?.s4s1q5 &&
        e1?.s4s2q1 == e2?.s4s2q1 &&
        e1?.s4s2q2 == e2?.s4s2q2 &&
        e1?.s4s2q3 == e2?.s4s2q3 &&
        e1?.s4s2q4 == e2?.s4s2q4 &&
        e1?.s4s2q5 == e2?.s4s2q5 &&
        e1?.s4s3q1 == e2?.s4s3q1 &&
        e1?.s4s3q2 == e2?.s4s3q2 &&
        e1?.s4s3q3 == e2?.s4s3q3 &&
        e1?.s4s3q4 == e2?.s4s3q4 &&
        e1?.s4s3q5 == e2?.s4s3q5 &&
        e1?.s4s4q1 == e2?.s4s4q1 &&
        e1?.s4s4q2 == e2?.s4s4q2 &&
        e1?.s4s4q3 == e2?.s4s4q3 &&
        e1?.s4s4q4 == e2?.s4s4q4 &&
        e1?.s4s4q5 == e2?.s4s4q5 &&
        e1?.uid == e2?.uid &&
        e1?.cid == e2?.cid &&
        e1?.s4s1q1k == e2?.s4s1q1k &&
        e1?.s4s1q2k == e2?.s4s1q2k &&
        e1?.s4s1q4k == e2?.s4s1q4k &&
        e1?.s4s1q3k == e2?.s4s1q3k &&
        e1?.s4s1q5k == e2?.s4s1q5k &&
        e1?.s4s2q1k == e2?.s4s2q1k &&
        e1?.s4s2q2k == e2?.s4s2q2k &&
        e1?.s4s2q3k == e2?.s4s2q3k &&
        e1?.s4s2q4k == e2?.s4s2q4k &&
        e1?.s4s2q5k == e2?.s4s2q5k &&
        e1?.s4s3q1k == e2?.s4s3q1k &&
        e1?.s4s3q2k == e2?.s4s3q2k &&
        e1?.s4s3q3k == e2?.s4s3q3k &&
        e1?.s4s3q4k == e2?.s4s3q4k &&
        e1?.s4s3q5k == e2?.s4s3q5k &&
        e1?.s4s4q1k == e2?.s4s4q1k &&
        e1?.s4s4q2k == e2?.s4s4q2k &&
        e1?.s4s4q3k == e2?.s4s4q3k &&
        e1?.s4s4q4k == e2?.s4s4q4k &&
        e1?.s4s4q5k == e2?.s4s4q5k;
  }

  @override
  int hash(Section4Record? e) => const ListEquality().hash([
        e?.s4s1q1,
        e?.s4s1q2,
        e?.s4s1q3,
        e?.s4s1q4,
        e?.s4s1q5,
        e?.s4s2q1,
        e?.s4s2q2,
        e?.s4s2q3,
        e?.s4s2q4,
        e?.s4s2q5,
        e?.s4s3q1,
        e?.s4s3q2,
        e?.s4s3q3,
        e?.s4s3q4,
        e?.s4s3q5,
        e?.s4s4q1,
        e?.s4s4q2,
        e?.s4s4q3,
        e?.s4s4q4,
        e?.s4s4q5,
        e?.uid,
        e?.cid,
        e?.s4s1q1k,
        e?.s4s1q2k,
        e?.s4s1q4k,
        e?.s4s1q3k,
        e?.s4s1q5k,
        e?.s4s2q1k,
        e?.s4s2q2k,
        e?.s4s2q3k,
        e?.s4s2q4k,
        e?.s4s2q5k,
        e?.s4s3q1k,
        e?.s4s3q2k,
        e?.s4s3q3k,
        e?.s4s3q4k,
        e?.s4s3q5k,
        e?.s4s4q1k,
        e?.s4s4q2k,
        e?.s4s4q3k,
        e?.s4s4q4k,
        e?.s4s4q5k
      ]);

  @override
  bool isValidKey(Object? o) => o is Section4Record;
}

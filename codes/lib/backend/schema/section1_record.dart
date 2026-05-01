import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Section1Record extends FirestoreRecord {
  Section1Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "s1q1" field.
  String? _s1q1;
  String get s1q1 => _s1q1 ?? '';
  bool hasS1q1() => _s1q1 != null;

  // "s1q2" field.
  String? _s1q2;
  String get s1q2 => _s1q2 ?? '';
  bool hasS1q2() => _s1q2 != null;

  // "s1q3" field.
  String? _s1q3;
  String get s1q3 => _s1q3 ?? '';
  bool hasS1q3() => _s1q3 != null;

  // "s1q4" field.
  String? _s1q4;
  String get s1q4 => _s1q4 ?? '';
  bool hasS1q4() => _s1q4 != null;

  // "s1q5" field.
  String? _s1q5;
  String get s1q5 => _s1q5 ?? '';
  bool hasS1q5() => _s1q5 != null;

  // "s1q6" field.
  String? _s1q6;
  String get s1q6 => _s1q6 ?? '';
  bool hasS1q6() => _s1q6 != null;

  // "s1q7" field.
  String? _s1q7;
  String get s1q7 => _s1q7 ?? '';
  bool hasS1q7() => _s1q7 != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "cid" field.
  DocumentReference? _cid;
  DocumentReference? get cid => _cid;
  bool hasCid() => _cid != null;

  // "s1q1k" field.
  String? _s1q1k;
  String get s1q1k => _s1q1k ?? '';
  bool hasS1q1k() => _s1q1k != null;

  // "s1q2k" field.
  String? _s1q2k;
  String get s1q2k => _s1q2k ?? '';
  bool hasS1q2k() => _s1q2k != null;

  // "s1q3k" field.
  String? _s1q3k;
  String get s1q3k => _s1q3k ?? '';
  bool hasS1q3k() => _s1q3k != null;

  // "s1q4k" field.
  String? _s1q4k;
  String get s1q4k => _s1q4k ?? '';
  bool hasS1q4k() => _s1q4k != null;

  // "s1q5k" field.
  String? _s1q5k;
  String get s1q5k => _s1q5k ?? '';
  bool hasS1q5k() => _s1q5k != null;

  // "s1q6k" field.
  String? _s1q6k;
  String get s1q6k => _s1q6k ?? '';
  bool hasS1q6k() => _s1q6k != null;

  // "s1q7k" field.
  String? _s1q7k;
  String get s1q7k => _s1q7k ?? '';
  bool hasS1q7k() => _s1q7k != null;

  void _initializeFields() {
    _s1q1 = snapshotData['s1q1'] as String?;
    _s1q2 = snapshotData['s1q2'] as String?;
    _s1q3 = snapshotData['s1q3'] as String?;
    _s1q4 = snapshotData['s1q4'] as String?;
    _s1q5 = snapshotData['s1q5'] as String?;
    _s1q6 = snapshotData['s1q6'] as String?;
    _s1q7 = snapshotData['s1q7'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _cid = snapshotData['cid'] as DocumentReference?;
    _s1q1k = snapshotData['s1q1k'] as String?;
    _s1q2k = snapshotData['s1q2k'] as String?;
    _s1q3k = snapshotData['s1q3k'] as String?;
    _s1q4k = snapshotData['s1q4k'] as String?;
    _s1q5k = snapshotData['s1q5k'] as String?;
    _s1q6k = snapshotData['s1q6k'] as String?;
    _s1q7k = snapshotData['s1q7k'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('section1');

  static Stream<Section1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Section1Record.fromSnapshot(s));

  static Future<Section1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Section1Record.fromSnapshot(s));

  static Section1Record fromSnapshot(DocumentSnapshot snapshot) =>
      Section1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Section1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Section1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Section1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Section1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSection1RecordData({
  String? s1q1,
  String? s1q2,
  String? s1q3,
  String? s1q4,
  String? s1q5,
  String? s1q6,
  String? s1q7,
  DocumentReference? uid,
  DocumentReference? cid,
  String? s1q1k,
  String? s1q2k,
  String? s1q3k,
  String? s1q4k,
  String? s1q5k,
  String? s1q6k,
  String? s1q7k,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      's1q1': s1q1,
      's1q2': s1q2,
      's1q3': s1q3,
      's1q4': s1q4,
      's1q5': s1q5,
      's1q6': s1q6,
      's1q7': s1q7,
      'uid': uid,
      'cid': cid,
      's1q1k': s1q1k,
      's1q2k': s1q2k,
      's1q3k': s1q3k,
      's1q4k': s1q4k,
      's1q5k': s1q5k,
      's1q6k': s1q6k,
      's1q7k': s1q7k,
    }.withoutNulls,
  );

  return firestoreData;
}

class Section1RecordDocumentEquality implements Equality<Section1Record> {
  const Section1RecordDocumentEquality();

  @override
  bool equals(Section1Record? e1, Section1Record? e2) {
    return e1?.s1q1 == e2?.s1q1 &&
        e1?.s1q2 == e2?.s1q2 &&
        e1?.s1q3 == e2?.s1q3 &&
        e1?.s1q4 == e2?.s1q4 &&
        e1?.s1q5 == e2?.s1q5 &&
        e1?.s1q6 == e2?.s1q6 &&
        e1?.s1q7 == e2?.s1q7 &&
        e1?.uid == e2?.uid &&
        e1?.cid == e2?.cid &&
        e1?.s1q1k == e2?.s1q1k &&
        e1?.s1q2k == e2?.s1q2k &&
        e1?.s1q3k == e2?.s1q3k &&
        e1?.s1q4k == e2?.s1q4k &&
        e1?.s1q5k == e2?.s1q5k &&
        e1?.s1q6k == e2?.s1q6k &&
        e1?.s1q7k == e2?.s1q7k;
  }

  @override
  int hash(Section1Record? e) => const ListEquality().hash([
        e?.s1q1,
        e?.s1q2,
        e?.s1q3,
        e?.s1q4,
        e?.s1q5,
        e?.s1q6,
        e?.s1q7,
        e?.uid,
        e?.cid,
        e?.s1q1k,
        e?.s1q2k,
        e?.s1q3k,
        e?.s1q4k,
        e?.s1q5k,
        e?.s1q6k,
        e?.s1q7k
      ]);

  @override
  bool isValidKey(Object? o) => o is Section1Record;
}

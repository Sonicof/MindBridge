import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Section2Record extends FirestoreRecord {
  Section2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "s2q1" field.
  String? _s2q1;
  String get s2q1 => _s2q1 ?? '';
  bool hasS2q1() => _s2q1 != null;

  // "s2q2" field.
  String? _s2q2;
  String get s2q2 => _s2q2 ?? '';
  bool hasS2q2() => _s2q2 != null;

  // "s2q3" field.
  String? _s2q3;
  String get s2q3 => _s2q3 ?? '';
  bool hasS2q3() => _s2q3 != null;

  // "s2q4" field.
  String? _s2q4;
  String get s2q4 => _s2q4 ?? '';
  bool hasS2q4() => _s2q4 != null;

  // "s2q5" field.
  String? _s2q5;
  String get s2q5 => _s2q5 ?? '';
  bool hasS2q5() => _s2q5 != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "cid" field.
  DocumentReference? _cid;
  DocumentReference? get cid => _cid;
  bool hasCid() => _cid != null;

  // "s2q1k" field.
  String? _s2q1k;
  String get s2q1k => _s2q1k ?? '';
  bool hasS2q1k() => _s2q1k != null;

  // "s2q2k" field.
  String? _s2q2k;
  String get s2q2k => _s2q2k ?? '';
  bool hasS2q2k() => _s2q2k != null;

  // "s2q3k" field.
  String? _s2q3k;
  String get s2q3k => _s2q3k ?? '';
  bool hasS2q3k() => _s2q3k != null;

  // "s2q4k" field.
  String? _s2q4k;
  String get s2q4k => _s2q4k ?? '';
  bool hasS2q4k() => _s2q4k != null;

  // "s2q5k" field.
  String? _s2q5k;
  String get s2q5k => _s2q5k ?? '';
  bool hasS2q5k() => _s2q5k != null;

  void _initializeFields() {
    _s2q1 = snapshotData['s2q1'] as String?;
    _s2q2 = snapshotData['s2q2'] as String?;
    _s2q3 = snapshotData['s2q3'] as String?;
    _s2q4 = snapshotData['s2q4'] as String?;
    _s2q5 = snapshotData['s2q5'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _cid = snapshotData['cid'] as DocumentReference?;
    _s2q1k = snapshotData['s2q1k'] as String?;
    _s2q2k = snapshotData['s2q2k'] as String?;
    _s2q3k = snapshotData['s2q3k'] as String?;
    _s2q4k = snapshotData['s2q4k'] as String?;
    _s2q5k = snapshotData['s2q5k'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('section2');

  static Stream<Section2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Section2Record.fromSnapshot(s));

  static Future<Section2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Section2Record.fromSnapshot(s));

  static Section2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Section2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Section2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Section2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Section2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Section2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSection2RecordData({
  String? s2q1,
  String? s2q2,
  String? s2q3,
  String? s2q4,
  String? s2q5,
  DocumentReference? uid,
  DocumentReference? cid,
  String? s2q1k,
  String? s2q2k,
  String? s2q3k,
  String? s2q4k,
  String? s2q5k,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      's2q1': s2q1,
      's2q2': s2q2,
      's2q3': s2q3,
      's2q4': s2q4,
      's2q5': s2q5,
      'uid': uid,
      'cid': cid,
      's2q1k': s2q1k,
      's2q2k': s2q2k,
      's2q3k': s2q3k,
      's2q4k': s2q4k,
      's2q5k': s2q5k,
    }.withoutNulls,
  );

  return firestoreData;
}

class Section2RecordDocumentEquality implements Equality<Section2Record> {
  const Section2RecordDocumentEquality();

  @override
  bool equals(Section2Record? e1, Section2Record? e2) {
    return e1?.s2q1 == e2?.s2q1 &&
        e1?.s2q2 == e2?.s2q2 &&
        e1?.s2q3 == e2?.s2q3 &&
        e1?.s2q4 == e2?.s2q4 &&
        e1?.s2q5 == e2?.s2q5 &&
        e1?.uid == e2?.uid &&
        e1?.cid == e2?.cid &&
        e1?.s2q1k == e2?.s2q1k &&
        e1?.s2q2k == e2?.s2q2k &&
        e1?.s2q3k == e2?.s2q3k &&
        e1?.s2q4k == e2?.s2q4k &&
        e1?.s2q5k == e2?.s2q5k;
  }

  @override
  int hash(Section2Record? e) => const ListEquality().hash([
        e?.s2q1,
        e?.s2q2,
        e?.s2q3,
        e?.s2q4,
        e?.s2q5,
        e?.uid,
        e?.cid,
        e?.s2q1k,
        e?.s2q2k,
        e?.s2q3k,
        e?.s2q4k,
        e?.s2q5k
      ]);

  @override
  bool isValidKey(Object? o) => o is Section2Record;
}

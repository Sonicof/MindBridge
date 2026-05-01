import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeachernumberRecord extends FirestoreRecord {
  TeachernumberRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  bool hasNumber() => _number != null;

  // "principal_ref" field.
  DocumentReference? _principalRef;
  DocumentReference? get principalRef => _principalRef;
  bool hasPrincipalRef() => _principalRef != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _number = snapshotData['number'] as String?;
    _principalRef = snapshotData['principal_ref'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teachernumber');

  static Stream<TeachernumberRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeachernumberRecord.fromSnapshot(s));

  static Future<TeachernumberRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeachernumberRecord.fromSnapshot(s));

  static TeachernumberRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TeachernumberRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeachernumberRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeachernumberRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeachernumberRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeachernumberRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeachernumberRecordData({
  String? number,
  DocumentReference? principalRef,
  DateTime? timestamp,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'number': number,
      'principal_ref': principalRef,
      'timestamp': timestamp,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeachernumberRecordDocumentEquality
    implements Equality<TeachernumberRecord> {
  const TeachernumberRecordDocumentEquality();

  @override
  bool equals(TeachernumberRecord? e1, TeachernumberRecord? e2) {
    return e1?.number == e2?.number &&
        e1?.principalRef == e2?.principalRef &&
        e1?.timestamp == e2?.timestamp &&
        e1?.name == e2?.name;
  }

  @override
  int hash(TeachernumberRecord? e) => const ListEquality()
      .hash([e?.number, e?.principalRef, e?.timestamp, e?.name]);

  @override
  bool isValidKey(Object? o) => o is TeachernumberRecord;
}

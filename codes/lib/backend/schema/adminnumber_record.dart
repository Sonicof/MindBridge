import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminnumberRecord extends FirestoreRecord {
  AdminnumberRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "principal_name" field.
  String? _principalName;
  String get principalName => _principalName ?? '';
  bool hasPrincipalName() => _principalName != null;

  // "principal_number" field.
  String? _principalNumber;
  String get principalNumber => _principalNumber ?? '';
  bool hasPrincipalNumber() => _principalNumber != null;

  // "school_name" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  void _initializeFields() {
    _principalName = snapshotData['principal_name'] as String?;
    _principalNumber = snapshotData['principal_number'] as String?;
    _schoolName = snapshotData['school_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('adminnumber');

  static Stream<AdminnumberRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminnumberRecord.fromSnapshot(s));

  static Future<AdminnumberRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminnumberRecord.fromSnapshot(s));

  static AdminnumberRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdminnumberRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminnumberRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminnumberRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminnumberRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminnumberRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminnumberRecordData({
  String? principalName,
  String? principalNumber,
  String? schoolName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'principal_name': principalName,
      'principal_number': principalNumber,
      'school_name': schoolName,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminnumberRecordDocumentEquality implements Equality<AdminnumberRecord> {
  const AdminnumberRecordDocumentEquality();

  @override
  bool equals(AdminnumberRecord? e1, AdminnumberRecord? e2) {
    return e1?.principalName == e2?.principalName &&
        e1?.principalNumber == e2?.principalNumber &&
        e1?.schoolName == e2?.schoolName;
  }

  @override
  int hash(AdminnumberRecord? e) => const ListEquality()
      .hash([e?.principalName, e?.principalNumber, e?.schoolName]);

  @override
  bool isValidKey(Object? o) => o is AdminnumberRecord;
}

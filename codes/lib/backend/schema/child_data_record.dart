import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChildDataRecord extends FirestoreRecord {
  ChildDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "child_name" field.
  String? _childName;
  String get childName => _childName ?? '';
  bool hasChildName() => _childName != null;

  // "child_gender" field.
  String? _childGender;
  String get childGender => _childGender ?? '';
  bool hasChildGender() => _childGender != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "child_grade" field.
  String? _childGrade;
  String get childGrade => _childGrade ?? '';
  bool hasChildGrade() => _childGrade != null;

  // "curriculum" field.
  String? _curriculum;
  String get curriculum => _curriculum ?? '';
  bool hasCurriculum() => _curriculum != null;

  // "child_fn" field.
  String? _childFn;
  String get childFn => _childFn ?? '';
  bool hasChildFn() => _childFn != null;

  // "chid_ln" field.
  String? _chidLn;
  String get chidLn => _chidLn ?? '';
  bool hasChidLn() => _chidLn != null;

  // "child_id" field.
  String? _childId;
  String get childId => _childId ?? '';
  bool hasChildId() => _childId != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "child_dob" field.
  String? _childDob;
  String get childDob => _childDob ?? '';
  bool hasChildDob() => _childDob != null;

  // "cid" field.
  String? _cid;
  String get cid => _cid ?? '';
  bool hasCid() => _cid != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "school_name" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "child_genderk" field.
  String? _childGenderk;
  String get childGenderk => _childGenderk ?? '';
  bool hasChildGenderk() => _childGenderk != null;

  // "medium" field.
  String? _medium;
  String get medium => _medium ?? '';
  bool hasMedium() => _medium != null;

  // "mediumk" field.
  String? _mediumk;
  String get mediumk => _mediumk ?? '';
  bool hasMediumk() => _mediumk != null;

  void _initializeFields() {
    _photoUrl = snapshotData['photo_url'] as String?;
    _childName = snapshotData['child_name'] as String?;
    _childGender = snapshotData['child_gender'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _childGrade = snapshotData['child_grade'] as String?;
    _curriculum = snapshotData['curriculum'] as String?;
    _childFn = snapshotData['child_fn'] as String?;
    _chidLn = snapshotData['chid_ln'] as String?;
    _childId = snapshotData['child_id'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _childDob = snapshotData['child_dob'] as String?;
    _cid = snapshotData['cid'] as String?;
    _age = snapshotData['age'] as String?;
    _schoolName = snapshotData['school_name'] as String?;
    _childGenderk = snapshotData['child_genderk'] as String?;
    _medium = snapshotData['medium'] as String?;
    _mediumk = snapshotData['mediumk'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('child_data');

  static Stream<ChildDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChildDataRecord.fromSnapshot(s));

  static Future<ChildDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChildDataRecord.fromSnapshot(s));

  static ChildDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChildDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChildDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChildDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChildDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChildDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChildDataRecordData({
  String? photoUrl,
  String? childName,
  String? childGender,
  DateTime? createdTime,
  String? childGrade,
  String? curriculum,
  String? childFn,
  String? chidLn,
  String? childId,
  DocumentReference? uid,
  String? childDob,
  String? cid,
  String? age,
  String? schoolName,
  String? childGenderk,
  String? medium,
  String? mediumk,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo_url': photoUrl,
      'child_name': childName,
      'child_gender': childGender,
      'created_time': createdTime,
      'child_grade': childGrade,
      'curriculum': curriculum,
      'child_fn': childFn,
      'chid_ln': chidLn,
      'child_id': childId,
      'uid': uid,
      'child_dob': childDob,
      'cid': cid,
      'age': age,
      'school_name': schoolName,
      'child_genderk': childGenderk,
      'medium': medium,
      'mediumk': mediumk,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChildDataRecordDocumentEquality implements Equality<ChildDataRecord> {
  const ChildDataRecordDocumentEquality();

  @override
  bool equals(ChildDataRecord? e1, ChildDataRecord? e2) {
    return e1?.photoUrl == e2?.photoUrl &&
        e1?.childName == e2?.childName &&
        e1?.childGender == e2?.childGender &&
        e1?.createdTime == e2?.createdTime &&
        e1?.childGrade == e2?.childGrade &&
        e1?.curriculum == e2?.curriculum &&
        e1?.childFn == e2?.childFn &&
        e1?.chidLn == e2?.chidLn &&
        e1?.childId == e2?.childId &&
        e1?.uid == e2?.uid &&
        e1?.childDob == e2?.childDob &&
        e1?.cid == e2?.cid &&
        e1?.age == e2?.age &&
        e1?.schoolName == e2?.schoolName &&
        e1?.childGenderk == e2?.childGenderk &&
        e1?.medium == e2?.medium &&
        e1?.mediumk == e2?.mediumk;
  }

  @override
  int hash(ChildDataRecord? e) => const ListEquality().hash([
        e?.photoUrl,
        e?.childName,
        e?.childGender,
        e?.createdTime,
        e?.childGrade,
        e?.curriculum,
        e?.childFn,
        e?.chidLn,
        e?.childId,
        e?.uid,
        e?.childDob,
        e?.cid,
        e?.age,
        e?.schoolName,
        e?.childGenderk,
        e?.medium,
        e?.mediumk
      ]);

  @override
  bool isValidKey(Object? o) => o is ChildDataRecord;
}

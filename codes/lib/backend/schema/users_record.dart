import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "school_pincode" field.
  int? _schoolPincode;
  int get schoolPincode => _schoolPincode ?? 0;
  bool hasSchoolPincode() => _schoolPincode != null;

  // "school_type" field.
  String? _schoolType;
  String get schoolType => _schoolType ?? '';
  bool hasSchoolType() => _schoolType != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "screening_count" field.
  int? _screeningCount;
  int get screeningCount => _screeningCount ?? 0;
  bool hasScreeningCount() => _screeningCount != null;

  // "feedback_done" field.
  bool? _feedbackDone;
  bool get feedbackDone => _feedbackDone ?? false;
  bool hasFeedbackDone() => _feedbackDone != null;

  // "isprincipal" field.
  String? _isprincipal;
  String get isprincipal => _isprincipal ?? '';
  bool hasIsprincipal() => _isprincipal != null;

  // "school_name" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "dob" field.
  String? _dob;
  String get dob => _dob ?? '';
  bool hasDob() => _dob != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "teaching_experience" field.
  int? _teachingExperience;
  int get teachingExperience => _teachingExperience ?? 0;
  bool hasTeachingExperience() => _teachingExperience != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "grade" field.
  String? _grade;
  String get grade => _grade ?? '';
  bool hasGrade() => _grade != null;

  // "set_flag" field.
  int? _setFlag;
  int get setFlag => _setFlag ?? 0;
  bool hasSetFlag() => _setFlag != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _schoolPincode = castToType<int>(snapshotData['school_pincode']);
    _schoolType = snapshotData['school_type'] as String?;
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _screeningCount = castToType<int>(snapshotData['screening_count']);
    _feedbackDone = snapshotData['feedback_done'] as bool?;
    _isprincipal = snapshotData['isprincipal'] as String?;
    _schoolName = snapshotData['school_name'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _dob = snapshotData['dob'] as String?;
    _gender = snapshotData['gender'] as String?;
    _teachingExperience = castToType<int>(snapshotData['teaching_experience']);
    _age = snapshotData['age'] as String?;
    _grade = snapshotData['grade'] as String?;
    _setFlag = castToType<int>(snapshotData['set_flag']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? schoolPincode,
  String? schoolType,
  String? email,
  String? photoUrl,
  int? screeningCount,
  bool? feedbackDone,
  String? isprincipal,
  String? schoolName,
  String? displayName,
  String? firstName,
  String? lastName,
  String? dob,
  String? gender,
  int? teachingExperience,
  String? age,
  String? grade,
  int? setFlag,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'school_pincode': schoolPincode,
      'school_type': schoolType,
      'email': email,
      'photo_url': photoUrl,
      'screening_count': screeningCount,
      'feedback_done': feedbackDone,
      'isprincipal': isprincipal,
      'school_name': schoolName,
      'display_name': displayName,
      'first_name': firstName,
      'last_name': lastName,
      'dob': dob,
      'gender': gender,
      'teaching_experience': teachingExperience,
      'age': age,
      'grade': grade,
      'set_flag': setFlag,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.schoolPincode == e2?.schoolPincode &&
        e1?.schoolType == e2?.schoolType &&
        e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.screeningCount == e2?.screeningCount &&
        e1?.feedbackDone == e2?.feedbackDone &&
        e1?.isprincipal == e2?.isprincipal &&
        e1?.schoolName == e2?.schoolName &&
        e1?.displayName == e2?.displayName &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.dob == e2?.dob &&
        e1?.gender == e2?.gender &&
        e1?.teachingExperience == e2?.teachingExperience &&
        e1?.age == e2?.age &&
        e1?.grade == e2?.grade &&
        e1?.setFlag == e2?.setFlag;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.schoolPincode,
        e?.schoolType,
        e?.email,
        e?.photoUrl,
        e?.screeningCount,
        e?.feedbackDone,
        e?.isprincipal,
        e?.schoolName,
        e?.displayName,
        e?.firstName,
        e?.lastName,
        e?.dob,
        e?.gender,
        e?.teachingExperience,
        e?.age,
        e?.grade,
        e?.setFlag
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

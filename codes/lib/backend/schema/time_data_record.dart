import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeDataRecord extends FirestoreRecord {
  TimeDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "timer_taken" field.
  String? _timerTaken;
  String get timerTaken => _timerTaken ?? '';
  bool hasTimerTaken() => _timerTaken != null;

  // "cid" field.
  DocumentReference? _cid;
  DocumentReference? get cid => _cid;
  bool hasCid() => _cid != null;

  void _initializeFields() {
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _timerTaken = snapshotData['timer_taken'] as String?;
    _cid = snapshotData['cid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('time_data');

  static Stream<TimeDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TimeDataRecord.fromSnapshot(s));

  static Future<TimeDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TimeDataRecord.fromSnapshot(s));

  static TimeDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TimeDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TimeDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TimeDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TimeDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TimeDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTimeDataRecordData({
  DateTime? timestamp,
  DocumentReference? uid,
  String? timerTaken,
  DocumentReference? cid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timestamp': timestamp,
      'uid': uid,
      'timer_taken': timerTaken,
      'cid': cid,
    }.withoutNulls,
  );

  return firestoreData;
}

class TimeDataRecordDocumentEquality implements Equality<TimeDataRecord> {
  const TimeDataRecordDocumentEquality();

  @override
  bool equals(TimeDataRecord? e1, TimeDataRecord? e2) {
    return e1?.timestamp == e2?.timestamp &&
        e1?.uid == e2?.uid &&
        e1?.timerTaken == e2?.timerTaken &&
        e1?.cid == e2?.cid;
  }

  @override
  int hash(TimeDataRecord? e) =>
      const ListEquality().hash([e?.timestamp, e?.uid, e?.timerTaken, e?.cid]);

  @override
  bool isValidKey(Object? o) => o is TimeDataRecord;
}

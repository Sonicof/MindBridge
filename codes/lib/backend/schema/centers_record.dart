import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CentersRecord extends FirestoreRecord {
  CentersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "info" field.
  String? _info;
  String get info => _info ?? '';
  bool hasInfo() => _info != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "votes" field.
  int? _votes;
  int get votes => _votes ?? 0;
  bool hasVotes() => _votes != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _info = snapshotData['info'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _votes = castToType<int>(snapshotData['votes']);
    _imageUrl = snapshotData['image_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('centers');

  static Stream<CentersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CentersRecord.fromSnapshot(s));

  static Future<CentersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CentersRecord.fromSnapshot(s));

  static CentersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CentersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CentersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CentersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CentersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CentersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCentersRecordData({
  String? name,
  String? info,
  LatLng? location,
  int? votes,
  String? imageUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'info': info,
      'location': location,
      'votes': votes,
      'image_url': imageUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class CentersRecordDocumentEquality implements Equality<CentersRecord> {
  const CentersRecordDocumentEquality();

  @override
  bool equals(CentersRecord? e1, CentersRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.info == e2?.info &&
        e1?.location == e2?.location &&
        e1?.votes == e2?.votes &&
        e1?.imageUrl == e2?.imageUrl;
  }

  @override
  int hash(CentersRecord? e) => const ListEquality()
      .hash([e?.name, e?.info, e?.location, e?.votes, e?.imageUrl]);

  @override
  bool isValidKey(Object? o) => o is CentersRecord;
}

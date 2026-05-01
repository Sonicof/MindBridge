import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlogsRecord extends FirestoreRecord {
  BlogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "heading" field.
  String? _heading;
  String get heading => _heading ?? '';
  bool hasHeading() => _heading != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "votes" field.
  int? _votes;
  int get votes => _votes ?? 0;
  bool hasVotes() => _votes != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  void _initializeFields() {
    _heading = snapshotData['heading'] as String?;
    _content = snapshotData['content'] as String?;
    _votes = castToType<int>(snapshotData['votes']);
    _imageUrl = snapshotData['image_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blogs');

  static Stream<BlogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BlogsRecord.fromSnapshot(s));

  static Future<BlogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BlogsRecord.fromSnapshot(s));

  static BlogsRecord fromSnapshot(DocumentSnapshot snapshot) => BlogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BlogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BlogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BlogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BlogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBlogsRecordData({
  String? heading,
  String? content,
  int? votes,
  String? imageUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'heading': heading,
      'content': content,
      'votes': votes,
      'image_url': imageUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class BlogsRecordDocumentEquality implements Equality<BlogsRecord> {
  const BlogsRecordDocumentEquality();

  @override
  bool equals(BlogsRecord? e1, BlogsRecord? e2) {
    return e1?.heading == e2?.heading &&
        e1?.content == e2?.content &&
        e1?.votes == e2?.votes &&
        e1?.imageUrl == e2?.imageUrl;
  }

  @override
  int hash(BlogsRecord? e) => const ListEquality()
      .hash([e?.heading, e?.content, e?.votes, e?.imageUrl]);

  @override
  bool isValidKey(Object? o) => o is BlogsRecord;
}

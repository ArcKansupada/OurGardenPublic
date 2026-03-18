import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeedItemRecord extends FirestoreRecord {
  FeedItemRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_datetime" field.
  DateTime? _createdDatetime;
  DateTime? get createdDatetime => _createdDatetime;
  bool hasCreatedDatetime() => _createdDatetime != null;

  // "author" field.
  DocumentReference? _author;
  DocumentReference? get author => _author;
  bool hasAuthor() => _author != null;

  // "type" field.
  FeedItemType? _type;
  FeedItemType? get type => _type;
  bool hasType() => _type != null;

  // "caption" field.
  String? _caption;
  String get caption => _caption ?? '';
  bool hasCaption() => _caption != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "plantID" field.
  String? _plantID;
  String get plantID => _plantID ?? '';
  bool hasPlantID() => _plantID != null;

  // "responders" field.
  List<DocumentReference>? _responders;
  List<DocumentReference> get responders => _responders ?? const [];
  bool hasResponders() => _responders != null;

  // "communities" field.
  List<DocumentReference>? _communities;
  List<DocumentReference> get communities => _communities ?? const [];
  bool hasCommunities() => _communities != null;

  // "plantEntry" field.
  DocumentReference? _plantEntry;
  DocumentReference? get plantEntry => _plantEntry;
  bool hasPlantEntry() => _plantEntry != null;

  void _initializeFields() {
    _createdDatetime = snapshotData['created_datetime'] as DateTime?;
    _author = snapshotData['author'] as DocumentReference?;
    _type = deserializeEnum<FeedItemType>(snapshotData['type']);
    _caption = snapshotData['caption'] as String?;
    _imageUrl = snapshotData['image_url'] as String?;
    _plantID = snapshotData['plantID'] as String?;
    _responders = getDataList(snapshotData['responders']);
    _communities = getDataList(snapshotData['communities']);
    _plantEntry = snapshotData['plantEntry'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedItem');

  static Stream<FeedItemRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedItemRecord.fromSnapshot(s));

  static Future<FeedItemRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedItemRecord.fromSnapshot(s));

  static FeedItemRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedItemRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedItemRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedItemRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedItemRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedItemRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedItemRecordData({
  DateTime? createdDatetime,
  DocumentReference? author,
  FeedItemType? type,
  String? caption,
  String? imageUrl,
  String? plantID,
  DocumentReference? plantEntry,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_datetime': createdDatetime,
      'author': author,
      'type': type,
      'caption': caption,
      'image_url': imageUrl,
      'plantID': plantID,
      'plantEntry': plantEntry,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedItemRecordDocumentEquality implements Equality<FeedItemRecord> {
  const FeedItemRecordDocumentEquality();

  @override
  bool equals(FeedItemRecord? e1, FeedItemRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdDatetime == e2?.createdDatetime &&
        e1?.author == e2?.author &&
        e1?.type == e2?.type &&
        e1?.caption == e2?.caption &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.plantID == e2?.plantID &&
        listEquality.equals(e1?.responders, e2?.responders) &&
        listEquality.equals(e1?.communities, e2?.communities) &&
        e1?.plantEntry == e2?.plantEntry;
  }

  @override
  int hash(FeedItemRecord? e) => const ListEquality().hash([
        e?.createdDatetime,
        e?.author,
        e?.type,
        e?.caption,
        e?.imageUrl,
        e?.plantID,
        e?.responders,
        e?.communities,
        e?.plantEntry
      ]);

  @override
  bool isValidKey(Object? o) => o is FeedItemRecord;
}

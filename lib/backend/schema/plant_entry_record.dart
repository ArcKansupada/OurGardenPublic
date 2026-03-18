import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlantEntryRecord extends FirestoreRecord {
  PlantEntryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  bool hasSlug() => _slug != null;

  // "common_name" field.
  String? _commonName;
  String get commonName => _commonName ?? '';
  bool hasCommonName() => _commonName != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "num" field.
  int? _num;
  int get num => _num ?? 0;
  bool hasNum() => _num != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "plantType" field.
  String? _plantType;
  String get plantType => _plantType ?? '';
  bool hasPlantType() => _plantType != null;

  // "wateringType" field.
  String? _wateringType;
  String get wateringType => _wateringType ?? '';
  bool hasWateringType() => _wateringType != null;

  void _initializeFields() {
    _slug = snapshotData['slug'] as String?;
    _commonName = snapshotData['common_name'] as String?;
    _id = snapshotData['id'] as String?;
    _num = castToType<int>(snapshotData['num']);
    _user = snapshotData['user'] as DocumentReference?;
    _imageUrl = snapshotData['image_url'] as String?;
    _plantType = snapshotData['plantType'] as String?;
    _wateringType = snapshotData['wateringType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plantEntry');

  static Stream<PlantEntryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlantEntryRecord.fromSnapshot(s));

  static Future<PlantEntryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlantEntryRecord.fromSnapshot(s));

  static PlantEntryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlantEntryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlantEntryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlantEntryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlantEntryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlantEntryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlantEntryRecordData({
  String? slug,
  String? commonName,
  String? id,
  int? num,
  DocumentReference? user,
  String? imageUrl,
  String? plantType,
  String? wateringType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'slug': slug,
      'common_name': commonName,
      'id': id,
      'num': num,
      'user': user,
      'image_url': imageUrl,
      'plantType': plantType,
      'wateringType': wateringType,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlantEntryRecordDocumentEquality implements Equality<PlantEntryRecord> {
  const PlantEntryRecordDocumentEquality();

  @override
  bool equals(PlantEntryRecord? e1, PlantEntryRecord? e2) {
    return e1?.slug == e2?.slug &&
        e1?.commonName == e2?.commonName &&
        e1?.id == e2?.id &&
        e1?.num == e2?.num &&
        e1?.user == e2?.user &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.plantType == e2?.plantType &&
        e1?.wateringType == e2?.wateringType;
  }

  @override
  int hash(PlantEntryRecord? e) => const ListEquality().hash([
        e?.slug,
        e?.commonName,
        e?.id,
        e?.num,
        e?.user,
        e?.imageUrl,
        e?.plantType,
        e?.wateringType
      ]);

  @override
  bool isValidKey(Object? o) => o is PlantEntryRecord;
}

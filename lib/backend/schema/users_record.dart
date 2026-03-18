import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

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

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "communities" field.
  List<DocumentReference>? _communities;
  List<DocumentReference> get communities => _communities ?? const [];
  bool hasCommunities() => _communities != null;

  // "acceptedRequests" field.
  List<DocumentReference>? _acceptedRequests;
  List<DocumentReference> get acceptedRequests => _acceptedRequests ?? const [];
  bool hasAcceptedRequests() => _acceptedRequests != null;

  // "plants" field.
  List<DocumentReference>? _plants;
  List<DocumentReference> get plants => _plants ?? const [];
  bool hasPlants() => _plants != null;

  // "outgoingRequests" field.
  List<DocumentReference>? _outgoingRequests;
  List<DocumentReference> get outgoingRequests => _outgoingRequests ?? const [];
  bool hasOutgoingRequests() => _outgoingRequests != null;

  // "acceptedOffers" field.
  List<DocumentReference>? _acceptedOffers;
  List<DocumentReference> get acceptedOffers => _acceptedOffers ?? const [];
  bool hasAcceptedOffers() => _acceptedOffers != null;

  // "outgoingOffers" field.
  List<DocumentReference>? _outgoingOffers;
  List<DocumentReference> get outgoingOffers => _outgoingOffers ?? const [];
  bool hasOutgoingOffers() => _outgoingOffers != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _communities = getDataList(snapshotData['communities']);
    _acceptedRequests = getDataList(snapshotData['acceptedRequests']);
    _plants = getDataList(snapshotData['plants']);
    _outgoingRequests = getDataList(snapshotData['outgoingRequests']);
    _acceptedOffers = getDataList(snapshotData['acceptedOffers']);
    _outgoingOffers = getDataList(snapshotData['outgoingOffers']);
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
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.location == e2?.location &&
        listEquality.equals(e1?.communities, e2?.communities) &&
        listEquality.equals(e1?.acceptedRequests, e2?.acceptedRequests) &&
        listEquality.equals(e1?.plants, e2?.plants) &&
        listEquality.equals(e1?.outgoingRequests, e2?.outgoingRequests) &&
        listEquality.equals(e1?.acceptedOffers, e2?.acceptedOffers) &&
        listEquality.equals(e1?.outgoingOffers, e2?.outgoingOffers);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.location,
        e?.communities,
        e?.acceptedRequests,
        e?.plants,
        e?.outgoingRequests,
        e?.acceptedOffers,
        e?.outgoingOffers
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

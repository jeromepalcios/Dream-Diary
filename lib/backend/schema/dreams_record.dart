import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DreamsRecord extends FirestoreRecord {
  DreamsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "creation_date" field.
  DateTime? _creationDate;
  DateTime? get creationDate => _creationDate;
  bool hasCreationDate() => _creationDate != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  bool hasFile() => _file != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "favoris" field.
  bool? _favoris;
  bool get favoris => _favoris ?? false;
  bool hasFavoris() => _favoris != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _creationDate = snapshotData['creation_date'] as DateTime?;
    _type = snapshotData['type'] as String?;
    _file = snapshotData['file'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _favoris = snapshotData['favoris'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dreams');

  static Stream<DreamsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DreamsRecord.fromSnapshot(s));

  static Future<DreamsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DreamsRecord.fromSnapshot(s));

  static DreamsRecord fromSnapshot(DocumentSnapshot snapshot) => DreamsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DreamsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DreamsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DreamsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DreamsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDreamsRecordData({
  String? title,
  String? description,
  String? image,
  DateTime? creationDate,
  String? type,
  String? file,
  DocumentReference? user,
  bool? favoris,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'image': image,
      'creation_date': creationDate,
      'type': type,
      'file': file,
      'user': user,
      'favoris': favoris,
    }.withoutNulls,
  );

  return firestoreData;
}

class DreamsRecordDocumentEquality implements Equality<DreamsRecord> {
  const DreamsRecordDocumentEquality();

  @override
  bool equals(DreamsRecord? e1, DreamsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.creationDate == e2?.creationDate &&
        e1?.type == e2?.type &&
        e1?.file == e2?.file &&
        e1?.user == e2?.user &&
        e1?.favoris == e2?.favoris;
  }

  @override
  int hash(DreamsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.image,
        e?.creationDate,
        e?.type,
        e?.file,
        e?.user,
        e?.favoris
      ]);

  @override
  bool isValidKey(Object? o) => o is DreamsRecord;
}

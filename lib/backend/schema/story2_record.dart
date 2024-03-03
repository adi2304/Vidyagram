import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class Story2Record extends FirestoreRecord {
  Story2Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "UserID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "storyImage" field.
  String? _storyImage;
  String get storyImage => _storyImage ?? '';
  bool hasStoryImage() => _storyImage != null;

  // "clicked" field.
  DocumentReference? _clicked;
  DocumentReference? get clicked => _clicked;
  bool hasClicked() => _clicked != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userID = snapshotData['UserID'] as DocumentReference?;
    _storyImage = snapshotData['storyImage'] as String?;
    _clicked = snapshotData['clicked'] as DocumentReference?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('story2')
          : FirebaseFirestore.instance.collectionGroup('story2');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('story2').doc(id);

  static Stream<Story2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Story2Record.fromSnapshot(s));

  static Future<Story2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Story2Record.fromSnapshot(s));

  static Story2Record fromSnapshot(DocumentSnapshot snapshot) => Story2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Story2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Story2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Story2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Story2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStory2RecordData({
  DocumentReference? userID,
  String? storyImage,
  DocumentReference? clicked,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UserID': userID,
      'storyImage': storyImage,
      'clicked': clicked,
      'createdTime': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class Story2RecordDocumentEquality implements Equality<Story2Record> {
  const Story2RecordDocumentEquality();

  @override
  bool equals(Story2Record? e1, Story2Record? e2) {
    return e1?.userID == e2?.userID &&
        e1?.storyImage == e2?.storyImage &&
        e1?.clicked == e2?.clicked &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(Story2Record? e) => const ListEquality()
      .hash([e?.userID, e?.storyImage, e?.clicked, e?.createdTime]);

  @override
  bool isValidKey(Object? o) => o is Story2Record;
}

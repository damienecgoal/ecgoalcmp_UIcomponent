import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  bool hasLabel() => _label != null;

  // "assigned" field.
  List<DocumentReference>? _assigned;
  List<DocumentReference> get assigned => _assigned ?? const [];
  bool hasAssigned() => _assigned != null;

  // "attachment" field.
  String? _attachment;
  String get attachment => _attachment ?? '';
  bool hasAttachment() => _attachment != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _label = snapshotData['label'] as String?;
    _assigned = getDataList(snapshotData['assigned']);
    _attachment = snapshotData['attachment'] as String?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  String? title,
  DateTime? dueDate,
  String? label,
  String? attachment,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'due_date': dueDate,
      'label': label,
      'attachment': attachment,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.dueDate == e2?.dueDate &&
        e1?.label == e2?.label &&
        listEquality.equals(e1?.assigned, e2?.assigned) &&
        e1?.attachment == e2?.attachment &&
        e1?.status == e2?.status;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash(
      [e?.title, e?.dueDate, e?.label, e?.assigned, e?.attachment, e?.status]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}

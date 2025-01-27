// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KanbanStruct extends FFFirebaseStruct {
  KanbanStruct({
    String? title,
    String? pin,
    String? message,
    List<String>? useravatar,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _pin = pin,
        _message = message,
        _useravatar = useravatar,
        _image = image,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "pin" field.
  String? _pin;
  String get pin => _pin ?? '';
  set pin(String? val) => _pin = val;

  bool hasPin() => _pin != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "useravatar" field.
  List<String>? _useravatar;
  List<String> get useravatar => _useravatar ?? const [];
  set useravatar(List<String>? val) => _useravatar = val;

  void updateUseravatar(Function(List<String>) updateFn) {
    updateFn(_useravatar ??= []);
  }

  bool hasUseravatar() => _useravatar != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static KanbanStruct fromMap(Map<String, dynamic> data) => KanbanStruct(
        title: data['title'] as String?,
        pin: data['pin'] as String?,
        message: data['message'] as String?,
        useravatar: getDataList(data['useravatar']),
        image: data['image'] as String?,
      );

  static KanbanStruct? maybeFromMap(dynamic data) =>
      data is Map ? KanbanStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'pin': _pin,
        'message': _message,
        'useravatar': _useravatar,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'pin': serializeParam(
          _pin,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'useravatar': serializeParam(
          _useravatar,
          ParamType.String,
          isList: true,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static KanbanStruct fromSerializableMap(Map<String, dynamic> data) =>
      KanbanStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        pin: deserializeParam(
          data['pin'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        useravatar: deserializeParam<String>(
          data['useravatar'],
          ParamType.String,
          true,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'KanbanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is KanbanStruct &&
        title == other.title &&
        pin == other.pin &&
        message == other.message &&
        listEquality.equals(useravatar, other.useravatar) &&
        image == other.image;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, pin, message, useravatar, image]);
}

KanbanStruct createKanbanStruct({
  String? title,
  String? pin,
  String? message,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    KanbanStruct(
      title: title,
      pin: pin,
      message: message,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

KanbanStruct? updateKanbanStruct(
  KanbanStruct? kanban, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    kanban
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addKanbanStructData(
  Map<String, dynamic> firestoreData,
  KanbanStruct? kanban,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (kanban == null) {
    return;
  }
  if (kanban.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && kanban.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final kanbanData = getKanbanFirestoreData(kanban, forFieldValue);
  final nestedData = kanbanData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = kanban.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getKanbanFirestoreData(
  KanbanStruct? kanban, [
  bool forFieldValue = false,
]) {
  if (kanban == null) {
    return {};
  }
  final firestoreData = mapToFirestore(kanban.toMap());

  // Add any Firestore field values
  kanban.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getKanbanListFirestoreData(
  List<KanbanStruct>? kanbans,
) =>
    kanbans?.map((e) => getKanbanFirestoreData(e, true)).toList() ?? [];

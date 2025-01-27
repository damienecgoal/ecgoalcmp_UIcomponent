// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KanbanLabelStruct extends FFFirebaseStruct {
  KanbanLabelStruct({
    String? title,
    Color? titleColor,
    Color? bgColor,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _titleColor = titleColor,
        _bgColor = bgColor,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "titleColor" field.
  Color? _titleColor;
  Color? get titleColor => _titleColor;
  set titleColor(Color? val) => _titleColor = val;

  bool hasTitleColor() => _titleColor != null;

  // "bgColor" field.
  Color? _bgColor;
  Color? get bgColor => _bgColor;
  set bgColor(Color? val) => _bgColor = val;

  bool hasBgColor() => _bgColor != null;

  static KanbanLabelStruct fromMap(Map<String, dynamic> data) =>
      KanbanLabelStruct(
        title: data['title'] as String?,
        titleColor: getSchemaColor(data['titleColor']),
        bgColor: getSchemaColor(data['bgColor']),
      );

  static KanbanLabelStruct? maybeFromMap(dynamic data) => data is Map
      ? KanbanLabelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'titleColor': _titleColor,
        'bgColor': _bgColor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'titleColor': serializeParam(
          _titleColor,
          ParamType.Color,
        ),
        'bgColor': serializeParam(
          _bgColor,
          ParamType.Color,
        ),
      }.withoutNulls;

  static KanbanLabelStruct fromSerializableMap(Map<String, dynamic> data) =>
      KanbanLabelStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        titleColor: deserializeParam(
          data['titleColor'],
          ParamType.Color,
          false,
        ),
        bgColor: deserializeParam(
          data['bgColor'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'KanbanLabelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is KanbanLabelStruct &&
        title == other.title &&
        titleColor == other.titleColor &&
        bgColor == other.bgColor;
  }

  @override
  int get hashCode => const ListEquality().hash([title, titleColor, bgColor]);
}

KanbanLabelStruct createKanbanLabelStruct({
  String? title,
  Color? titleColor,
  Color? bgColor,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    KanbanLabelStruct(
      title: title,
      titleColor: titleColor,
      bgColor: bgColor,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

KanbanLabelStruct? updateKanbanLabelStruct(
  KanbanLabelStruct? kanbanLabel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    kanbanLabel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addKanbanLabelStructData(
  Map<String, dynamic> firestoreData,
  KanbanLabelStruct? kanbanLabel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (kanbanLabel == null) {
    return;
  }
  if (kanbanLabel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && kanbanLabel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final kanbanLabelData =
      getKanbanLabelFirestoreData(kanbanLabel, forFieldValue);
  final nestedData =
      kanbanLabelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = kanbanLabel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getKanbanLabelFirestoreData(
  KanbanLabelStruct? kanbanLabel, [
  bool forFieldValue = false,
]) {
  if (kanbanLabel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(kanbanLabel.toMap());

  // Add any Firestore field values
  kanbanLabel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getKanbanLabelListFirestoreData(
  List<KanbanLabelStruct>? kanbanLabels,
) =>
    kanbanLabels?.map((e) => getKanbanLabelFirestoreData(e, true)).toList() ??
    [];

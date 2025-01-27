// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LabelStruct extends FFFirebaseStruct {
  LabelStruct({
    String? name,
    Color? color,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _color = color,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  static LabelStruct fromMap(Map<String, dynamic> data) => LabelStruct(
        name: data['name'] as String?,
        color: getSchemaColor(data['color']),
      );

  static LabelStruct? maybeFromMap(dynamic data) =>
      data is Map ? LabelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'color': _color,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
      }.withoutNulls;

  static LabelStruct fromSerializableMap(Map<String, dynamic> data) =>
      LabelStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'LabelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LabelStruct && name == other.name && color == other.color;
  }

  @override
  int get hashCode => const ListEquality().hash([name, color]);
}

LabelStruct createLabelStruct({
  String? name,
  Color? color,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LabelStruct(
      name: name,
      color: color,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LabelStruct? updateLabelStruct(
  LabelStruct? label, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    label
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLabelStructData(
  Map<String, dynamic> firestoreData,
  LabelStruct? label,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (label == null) {
    return;
  }
  if (label.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && label.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final labelData = getLabelFirestoreData(label, forFieldValue);
  final nestedData = labelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = label.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLabelFirestoreData(
  LabelStruct? label, [
  bool forFieldValue = false,
]) {
  if (label == null) {
    return {};
  }
  final firestoreData = mapToFirestore(label.toMap());

  // Add any Firestore field values
  label.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLabelListFirestoreData(
  List<LabelStruct>? labels,
) =>
    labels?.map((e) => getLabelFirestoreData(e, true)).toList() ?? [];

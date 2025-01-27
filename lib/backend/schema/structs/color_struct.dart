// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ColorStruct extends FFFirebaseStruct {
  ColorStruct({
    Color? color,
    Color? opacity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _color = color,
        _opacity = opacity,
        super(firestoreUtilData);

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  // "opacity" field.
  Color? _opacity;
  Color? get opacity => _opacity;
  set opacity(Color? val) => _opacity = val;

  bool hasOpacity() => _opacity != null;

  static ColorStruct fromMap(Map<String, dynamic> data) => ColorStruct(
        color: getSchemaColor(data['color']),
        opacity: getSchemaColor(data['opacity']),
      );

  static ColorStruct? maybeFromMap(dynamic data) =>
      data is Map ? ColorStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'color': _color,
        'opacity': _opacity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
        'opacity': serializeParam(
          _opacity,
          ParamType.Color,
        ),
      }.withoutNulls;

  static ColorStruct fromSerializableMap(Map<String, dynamic> data) =>
      ColorStruct(
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
        opacity: deserializeParam(
          data['opacity'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'ColorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ColorStruct &&
        color == other.color &&
        opacity == other.opacity;
  }

  @override
  int get hashCode => const ListEquality().hash([color, opacity]);
}

ColorStruct createColorStruct({
  Color? color,
  Color? opacity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ColorStruct(
      color: color,
      opacity: opacity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ColorStruct? updateColorStruct(
  ColorStruct? colorStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    colorStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addColorStructData(
  Map<String, dynamic> firestoreData,
  ColorStruct? colorStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (colorStruct == null) {
    return;
  }
  if (colorStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && colorStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final colorStructData = getColorFirestoreData(colorStruct, forFieldValue);
  final nestedData =
      colorStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = colorStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getColorFirestoreData(
  ColorStruct? colorStruct, [
  bool forFieldValue = false,
]) {
  if (colorStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(colorStruct.toMap());

  // Add any Firestore field values
  colorStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getColorListFirestoreData(
  List<ColorStruct>? colorStructs,
) =>
    colorStructs?.map((e) => getColorFirestoreData(e, true)).toList() ?? [];

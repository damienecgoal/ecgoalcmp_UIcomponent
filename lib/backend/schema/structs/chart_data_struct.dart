// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartDataStruct extends FFFirebaseStruct {
  ChartDataStruct({
    String? xAxis,
    double? yAxis,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _xAxis = xAxis,
        _yAxis = yAxis,
        super(firestoreUtilData);

  // "xAxis" field.
  String? _xAxis;
  String get xAxis => _xAxis ?? '';
  set xAxis(String? val) => _xAxis = val;

  bool hasXAxis() => _xAxis != null;

  // "yAxis" field.
  double? _yAxis;
  double get yAxis => _yAxis ?? 0.0;
  set yAxis(double? val) => _yAxis = val;

  void incrementYAxis(double amount) => yAxis = yAxis + amount;

  bool hasYAxis() => _yAxis != null;

  static ChartDataStruct fromMap(Map<String, dynamic> data) => ChartDataStruct(
        xAxis: data['xAxis'] as String?,
        yAxis: castToType<double>(data['yAxis']),
      );

  static ChartDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'xAxis': _xAxis,
        'yAxis': _yAxis,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'xAxis': serializeParam(
          _xAxis,
          ParamType.String,
        ),
        'yAxis': serializeParam(
          _yAxis,
          ParamType.double,
        ),
      }.withoutNulls;

  static ChartDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartDataStruct(
        xAxis: deserializeParam(
          data['xAxis'],
          ParamType.String,
          false,
        ),
        yAxis: deserializeParam(
          data['yAxis'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ChartDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartDataStruct &&
        xAxis == other.xAxis &&
        yAxis == other.yAxis;
  }

  @override
  int get hashCode => const ListEquality().hash([xAxis, yAxis]);
}

ChartDataStruct createChartDataStruct({
  String? xAxis,
  double? yAxis,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChartDataStruct(
      xAxis: xAxis,
      yAxis: yAxis,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChartDataStruct? updateChartDataStruct(
  ChartDataStruct? chartData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chartData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChartDataStructData(
  Map<String, dynamic> firestoreData,
  ChartDataStruct? chartData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chartData == null) {
    return;
  }
  if (chartData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chartData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chartDataData = getChartDataFirestoreData(chartData, forFieldValue);
  final nestedData = chartDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chartData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChartDataFirestoreData(
  ChartDataStruct? chartData, [
  bool forFieldValue = false,
]) {
  if (chartData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chartData.toMap());

  // Add any Firestore field values
  chartData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChartDataListFirestoreData(
  List<ChartDataStruct>? chartDatas,
) =>
    chartDatas?.map((e) => getChartDataFirestoreData(e, true)).toList() ?? [];

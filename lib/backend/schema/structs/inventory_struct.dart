// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class InventoryStruct extends FFFirebaseStruct {
  InventoryStruct({
    bool? inStock,
    int? stockQuantity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _inStock = inStock,
        _stockQuantity = stockQuantity,
        super(firestoreUtilData);

  // "in_stock" field.
  bool? _inStock;
  bool get inStock => _inStock ?? false;
  set inStock(bool? val) => _inStock = val;

  bool hasInStock() => _inStock != null;

  // "stock_quantity" field.
  int? _stockQuantity;
  int get stockQuantity => _stockQuantity ?? 0;
  set stockQuantity(int? val) => _stockQuantity = val;

  void incrementStockQuantity(int amount) =>
      stockQuantity = stockQuantity + amount;

  bool hasStockQuantity() => _stockQuantity != null;

  static InventoryStruct fromMap(Map<String, dynamic> data) => InventoryStruct(
        inStock: data['in_stock'] as bool?,
        stockQuantity: castToType<int>(data['stock_quantity']),
      );

  static InventoryStruct? maybeFromMap(dynamic data) => data is Map
      ? InventoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'in_stock': _inStock,
        'stock_quantity': _stockQuantity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'in_stock': serializeParam(
          _inStock,
          ParamType.bool,
        ),
        'stock_quantity': serializeParam(
          _stockQuantity,
          ParamType.int,
        ),
      }.withoutNulls;

  static InventoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      InventoryStruct(
        inStock: deserializeParam(
          data['in_stock'],
          ParamType.bool,
          false,
        ),
        stockQuantity: deserializeParam(
          data['stock_quantity'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'InventoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InventoryStruct &&
        inStock == other.inStock &&
        stockQuantity == other.stockQuantity;
  }

  @override
  int get hashCode => const ListEquality().hash([inStock, stockQuantity]);
}

InventoryStruct createInventoryStruct({
  bool? inStock,
  int? stockQuantity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InventoryStruct(
      inStock: inStock,
      stockQuantity: stockQuantity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InventoryStruct? updateInventoryStruct(
  InventoryStruct? inventory, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    inventory
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInventoryStructData(
  Map<String, dynamic> firestoreData,
  InventoryStruct? inventory,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (inventory == null) {
    return;
  }
  if (inventory.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && inventory.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final inventoryData = getInventoryFirestoreData(inventory, forFieldValue);
  final nestedData = inventoryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = inventory.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInventoryFirestoreData(
  InventoryStruct? inventory, [
  bool forFieldValue = false,
]) {
  if (inventory == null) {
    return {};
  }
  final firestoreData = mapToFirestore(inventory.toMap());

  // Add any Firestore field values
  inventory.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInventoryListFirestoreData(
  List<InventoryStruct>? inventorys,
) =>
    inventorys?.map((e) => getInventoryFirestoreData(e, true)).toList() ?? [];

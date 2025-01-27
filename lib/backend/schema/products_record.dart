import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "thumbnail" field.
  ImageStruct? _thumbnail;
  ImageStruct get thumbnail => _thumbnail ?? ImageStruct();
  bool hasThumbnail() => _thumbnail != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "regular_price" field.
  double? _regularPrice;
  double get regularPrice => _regularPrice ?? 0.0;
  bool hasRegularPrice() => _regularPrice != null;

  // "stock" field.
  InventoryStruct? _stock;
  InventoryStruct get stock => _stock ?? InventoryStruct();
  bool hasStock() => _stock != null;

  // "category" field.
  DocumentReference? _category;
  DocumentReference? get category => _category;
  bool hasCategory() => _category != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  bool hasSku() => _sku != null;

  // "barcode" field.
  String? _barcode;
  String get barcode => _barcode ?? '';
  bool hasBarcode() => _barcode != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _thumbnail = snapshotData['thumbnail'] is ImageStruct
        ? snapshotData['thumbnail']
        : ImageStruct.maybeFromMap(snapshotData['thumbnail']);
    _images = getDataList(snapshotData['images']);
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _regularPrice = castToType<double>(snapshotData['regular_price']);
    _stock = snapshotData['stock'] is InventoryStruct
        ? snapshotData['stock']
        : InventoryStruct.maybeFromMap(snapshotData['stock']);
    _category = snapshotData['category'] as DocumentReference?;
    _sku = snapshotData['sku'] as String?;
    _barcode = snapshotData['barcode'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  String? description,
  ImageStruct? thumbnail,
  double? salePrice,
  double? regularPrice,
  InventoryStruct? stock,
  DocumentReference? category,
  String? sku,
  String? barcode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'thumbnail': ImageStruct().toMap(),
      'sale_price': salePrice,
      'regular_price': regularPrice,
      'stock': InventoryStruct().toMap(),
      'category': category,
      'sku': sku,
      'barcode': barcode,
    }.withoutNulls,
  );

  // Handle nested data for "thumbnail" field.
  addImageStructData(firestoreData, thumbnail, 'thumbnail');

  // Handle nested data for "stock" field.
  addInventoryStructData(firestoreData, stock, 'stock');

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.thumbnail == e2?.thumbnail &&
        listEquality.equals(e1?.images, e2?.images) &&
        e1?.salePrice == e2?.salePrice &&
        e1?.regularPrice == e2?.regularPrice &&
        e1?.stock == e2?.stock &&
        e1?.category == e2?.category &&
        e1?.sku == e2?.sku &&
        e1?.barcode == e2?.barcode;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.thumbnail,
        e?.images,
        e?.salePrice,
        e?.regularPrice,
        e?.stock,
        e?.category,
        e?.sku,
        e?.barcode
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}

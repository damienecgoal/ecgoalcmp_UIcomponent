import 'package:collection/collection.dart';

enum Status {
  online,
  unavailable,
  offline,
}

enum Role {
  Admin,
  Client,
  User,
}

enum ProductStatus {
  Inactive,
  Scheduled,
  Publish,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Status):
      return Status.values.deserialize(value) as T?;
    case (Role):
      return Role.values.deserialize(value) as T?;
    case (ProductStatus):
      return ProductStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}

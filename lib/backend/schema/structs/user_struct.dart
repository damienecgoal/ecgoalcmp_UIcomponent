// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends FFFirebaseStruct {
  UserStruct({
    String? avatar,
    String? name,
    String? role,
    String? about,
    String? email,
    String? phone,
    AvailabilityStruct? time,
    Status? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _avatar = avatar,
        _name = name,
        _role = role,
        _about = about,
        _email = email,
        _phone = phone,
        _time = time,
        _status = status,
        super(firestoreUtilData);

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;

  bool hasAvatar() => _avatar != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  set about(String? val) => _about = val;

  bool hasAbout() => _about != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "time" field.
  AvailabilityStruct? _time;
  AvailabilityStruct get time => _time ?? AvailabilityStruct();
  set time(AvailabilityStruct? val) => _time = val;

  void updateTime(Function(AvailabilityStruct) updateFn) {
    updateFn(_time ??= AvailabilityStruct());
  }

  bool hasTime() => _time != null;

  // "status" field.
  Status? _status;
  Status? get status => _status;
  set status(Status? val) => _status = val;

  bool hasStatus() => _status != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        avatar: data['avatar'] as String?,
        name: data['name'] as String?,
        role: data['role'] as String?,
        about: data['about'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        time: data['time'] is AvailabilityStruct
            ? data['time']
            : AvailabilityStruct.maybeFromMap(data['time']),
        status: data['status'] is Status
            ? data['status']
            : deserializeEnum<Status>(data['status']),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'avatar': _avatar,
        'name': _name,
        'role': _role,
        'about': _about,
        'email': _email,
        'phone': _phone,
        'time': _time?.toMap(),
        'status': _status?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'about': serializeParam(
          _about,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.DataStruct,
        ),
        'status': serializeParam(
          _status,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        about: deserializeParam(
          data['about'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        time: deserializeStructParam(
          data['time'],
          ParamType.DataStruct,
          false,
          structBuilder: AvailabilityStruct.fromSerializableMap,
        ),
        status: deserializeParam<Status>(
          data['status'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        avatar == other.avatar &&
        name == other.name &&
        role == other.role &&
        about == other.about &&
        email == other.email &&
        phone == other.phone &&
        time == other.time &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([avatar, name, role, about, email, phone, time, status]);
}

UserStruct createUserStruct({
  String? avatar,
  String? name,
  String? role,
  String? about,
  String? email,
  String? phone,
  AvailabilityStruct? time,
  Status? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      avatar: avatar,
      name: name,
      role: role,
      about: about,
      email: email,
      phone: phone,
      time: time ?? (clearUnsetFields ? AvailabilityStruct() : null),
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    user
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && user.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = user.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = mapToFirestore(user.toMap());

  // Handle nested data for "time" field.
  addAvailabilityStructData(
    firestoreData,
    user.hasTime() ? user.time : null,
    'time',
    forFieldValue,
  );

  // Add any Firestore field values
  user.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((e) => getUserFirestoreData(e, true)).toList() ?? [];

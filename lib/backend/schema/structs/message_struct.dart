// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageStruct extends FFFirebaseStruct {
  MessageStruct({
    bool? isSender,
    UserStruct? user,
    String? text,
    DateTime? time,
    bool? seen,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isSender = isSender,
        _user = user,
        _text = text,
        _time = time,
        _seen = seen,
        super(firestoreUtilData);

  // "is_sender" field.
  bool? _isSender;
  bool get isSender => _isSender ?? false;
  set isSender(bool? val) => _isSender = val;

  bool hasIsSender() => _isSender != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;

  void updateUser(Function(UserStruct) updateFn) {
    updateFn(_user ??= UserStruct());
  }

  bool hasUser() => _user != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  set time(DateTime? val) => _time = val;

  bool hasTime() => _time != null;

  // "seen" field.
  bool? _seen;
  bool get seen => _seen ?? false;
  set seen(bool? val) => _seen = val;

  bool hasSeen() => _seen != null;

  static MessageStruct fromMap(Map<String, dynamic> data) => MessageStruct(
        isSender: data['is_sender'] as bool?,
        user: data['user'] is UserStruct
            ? data['user']
            : UserStruct.maybeFromMap(data['user']),
        text: data['text'] as String?,
        time: data['time'] as DateTime?,
        seen: data['seen'] as bool?,
      );

  static MessageStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'is_sender': _isSender,
        'user': _user?.toMap(),
        'text': _text,
        'time': _time,
        'seen': _seen,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'is_sender': serializeParam(
          _isSender,
          ParamType.bool,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.DateTime,
        ),
        'seen': serializeParam(
          _seen,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageStruct(
        isSender: deserializeParam(
          data['is_sender'],
          ParamType.bool,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.DateTime,
          false,
        ),
        seen: deserializeParam(
          data['seen'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessageStruct &&
        isSender == other.isSender &&
        user == other.user &&
        text == other.text &&
        time == other.time &&
        seen == other.seen;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([isSender, user, text, time, seen]);
}

MessageStruct createMessageStruct({
  bool? isSender,
  UserStruct? user,
  String? text,
  DateTime? time,
  bool? seen,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessageStruct(
      isSender: isSender,
      user: user ?? (clearUnsetFields ? UserStruct() : null),
      text: text,
      time: time,
      seen: seen,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessageStruct? updateMessageStruct(
  MessageStruct? message, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    message
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessageStructData(
  Map<String, dynamic> firestoreData,
  MessageStruct? message,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (message == null) {
    return;
  }
  if (message.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && message.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messageData = getMessageFirestoreData(message, forFieldValue);
  final nestedData = messageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = message.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessageFirestoreData(
  MessageStruct? message, [
  bool forFieldValue = false,
]) {
  if (message == null) {
    return {};
  }
  final firestoreData = mapToFirestore(message.toMap());

  // Handle nested data for "user" field.
  addUserStructData(
    firestoreData,
    message.hasUser() ? message.user : null,
    'user',
    forFieldValue,
  );

  // Add any Firestore field values
  message.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessageListFirestoreData(
  List<MessageStruct>? messages,
) =>
    messages?.map((e) => getMessageFirestoreData(e, true)).toList() ?? [];

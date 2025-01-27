import '/components_2/message/message_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notification_nodal_widget.dart' show NotificationNodalWidget;
import 'package:flutter/material.dart';

class NotificationNodalModel extends FlutterFlowModel<NotificationNodalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Message component.
  late MessageModel messageModel1;
  // Model for Message component.
  late MessageModel messageModel2;
  // Model for Message component.
  late MessageModel messageModel3;
  // Model for Message component.
  late MessageModel messageModel4;
  // Model for Message component.
  late MessageModel messageModel5;
  // Model for Message component.
  late MessageModel messageModel6;

  @override
  void initState(BuildContext context) {
    messageModel1 = createModel(context, () => MessageModel());
    messageModel2 = createModel(context, () => MessageModel());
    messageModel3 = createModel(context, () => MessageModel());
    messageModel4 = createModel(context, () => MessageModel());
    messageModel5 = createModel(context, () => MessageModel());
    messageModel6 = createModel(context, () => MessageModel());
  }

  @override
  void dispose() {
    messageModel1.dispose();
    messageModel2.dispose();
    messageModel3.dispose();
    messageModel4.dispose();
    messageModel5.dispose();
    messageModel6.dispose();
  }
}

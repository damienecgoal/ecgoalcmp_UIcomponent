import '/components/list/notification_card/notification_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_role_widget.dart' show EditRoleWidget;
import 'package:flutter/material.dart';

class EditRoleModel extends FlutterFlowModel<EditRoleWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Notification_Card component.
  late NotificationCardModel notificationCardModel1;
  // Model for Notification_Card component.
  late NotificationCardModel notificationCardModel2;
  // Model for Notification_Card component.
  late NotificationCardModel notificationCardModel3;
  // Model for Notification_Card component.
  late NotificationCardModel notificationCardModel4;
  // Model for Notification_Card component.
  late NotificationCardModel notificationCardModel5;
  // Model for Notification_Card component.
  late NotificationCardModel notificationCardModel6;
  // Model for Notification_Card component.
  late NotificationCardModel notificationCardModel7;
  // Model for Notification_Card component.
  late NotificationCardModel notificationCardModel8;
  // Model for Notification_Card component.
  late NotificationCardModel notificationCardModel9;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;

  @override
  void initState(BuildContext context) {
    notificationCardModel1 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel2 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel3 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel4 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel5 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel6 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel7 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel8 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel9 =
        createModel(context, () => NotificationCardModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    notificationCardModel1.dispose();
    notificationCardModel2.dispose();
    notificationCardModel3.dispose();
    notificationCardModel4.dispose();
    notificationCardModel5.dispose();
    notificationCardModel6.dispose();
    notificationCardModel7.dispose();
    notificationCardModel8.dispose();
    notificationCardModel9.dispose();
  }
}

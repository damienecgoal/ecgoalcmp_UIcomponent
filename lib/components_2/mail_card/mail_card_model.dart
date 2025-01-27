import '/components_2/user_card/user_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mail_card_widget.dart' show MailCardWidget;
import 'package:flutter/material.dart';

class MailCardModel extends FlutterFlowModel<MailCardWidget> {
  ///  Local state fields for this component.

  bool select = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for UserCard component.
  late UserCardModel userCardModel;

  @override
  void initState(BuildContext context) {
    userCardModel = createModel(context, () => UserCardModel());
  }

  @override
  void dispose() {
    userCardModel.dispose();
  }
}

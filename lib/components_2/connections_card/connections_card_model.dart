import '/components_2/avatar_title/avatar_title_widget.dart';
import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'connections_card_widget.dart' show ConnectionsCardWidget;
import 'package:flutter/material.dart';

class ConnectionsCardModel extends FlutterFlowModel<ConnectionsCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for AvatarTitle component.
  late AvatarTitleModel avatarTitleModel;
  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel;

  @override
  void initState(BuildContext context) {
    avatarTitleModel = createModel(context, () => AvatarTitleModel());
    iconBoxModel = createModel(context, () => IconBoxModel());
  }

  @override
  void dispose() {
    avatarTitleModel.dispose();
    iconBoxModel.dispose();
  }
}

import '/components_2/avatar_title/avatar_title_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'teams_card_widget.dart' show TeamsCardWidget;
import 'package:flutter/material.dart';

class TeamsCardModel extends FlutterFlowModel<TeamsCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for AvatarTitle component.
  late AvatarTitleModel avatarTitleModel;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;

  @override
  void initState(BuildContext context) {
    avatarTitleModel = createModel(context, () => AvatarTitleModel());
    statusCardModel = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    avatarTitleModel.dispose();
    statusCardModel.dispose();
  }
}

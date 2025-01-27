import '/components_2/pluse3_avatar/pluse3_avatar_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'teams_card2_widget.dart' show TeamsCard2Widget;
import 'package:flutter/material.dart';

class TeamsCard2Model extends FlutterFlowModel<TeamsCard2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Pluse3Avatar component.
  late Pluse3AvatarModel pluse3AvatarModel;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel1;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel2;

  @override
  void initState(BuildContext context) {
    pluse3AvatarModel = createModel(context, () => Pluse3AvatarModel());
    statusCardModel1 = createModel(context, () => StatusCardModel());
    statusCardModel2 = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    pluse3AvatarModel.dispose();
    statusCardModel1.dispose();
    statusCardModel2.dispose();
  }
}

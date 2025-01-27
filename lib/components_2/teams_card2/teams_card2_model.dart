import '/components/nodal/teams_action/teams_action_widget.dart';
import '/components_2/pluse3_avatar/pluse3_avatar_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'teams_card2_widget.dart' show TeamsCard2Widget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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

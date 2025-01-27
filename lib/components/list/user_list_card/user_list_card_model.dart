import '/components/avatar_2/avatar2_widget.dart';
import '/components/nodal/users_action/users_action_widget.dart';
import '/components_2/icon_container_circle/icon_container_circle_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'user_list_card_widget.dart' show UserListCardWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class UserListCardModel extends FlutterFlowModel<UserListCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for IconContainerCircle component.
  late IconContainerCircleModel iconContainerCircleModel;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;

  @override
  void initState(BuildContext context) {
    avatar2Model = createModel(context, () => Avatar2Model());
    iconContainerCircleModel =
        createModel(context, () => IconContainerCircleModel());
    statusCardModel = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    avatar2Model.dispose();
    iconContainerCircleModel.dispose();
    statusCardModel.dispose();
  }
}

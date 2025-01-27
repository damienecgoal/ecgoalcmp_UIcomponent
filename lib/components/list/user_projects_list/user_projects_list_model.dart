import '/components/avatar_name/avatar_name_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'user_projects_list_widget.dart' show UserProjectsListWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class UserProjectsListModel extends FlutterFlowModel<UserProjectsListWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for AvatarName component.
  late AvatarNameModel avatarNameModel;

  @override
  void initState(BuildContext context) {
    avatarNameModel = createModel(context, () => AvatarNameModel());
  }

  @override
  void dispose() {
    avatarNameModel.dispose();
  }
}

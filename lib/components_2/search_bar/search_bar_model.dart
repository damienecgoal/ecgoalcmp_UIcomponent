import '/auth/firebase_auth/auth_util.dart';
import '/components/nodal/dark_mode_nodal/dark_mode_nodal_widget.dart';
import '/components/nodal/language_select_nodal/language_select_nodal_widget.dart';
import '/components/nodal/notification_nodal/notification_nodal_widget.dart';
import '/components/nodal/profile_nodal/profile_nodal_widget.dart';
import '/components/nodal/shorcuts_nodal/shorcuts_nodal_widget.dart';
import '/components_2/avatar/avatar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'search_bar_widget.dart' show SearchBarWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SearchBarModel extends FlutterFlowModel<SearchBarWidget> {
  ///  Local state fields for this component.

  bool searchActive = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Avatar component.
  late AvatarModel avatarModel;

  @override
  void initState(BuildContext context) {
    avatarModel = createModel(context, () => AvatarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    avatarModel.dispose();
  }
}

import '/components/account2/account2_widget.dart';
import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'social_account_widget.dart' show SocialAccountWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SocialAccountModel extends FlutterFlowModel<SocialAccountWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Account2 component.
  late Account2Model account2Model;
  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel;

  @override
  void initState(BuildContext context) {
    account2Model = createModel(context, () => Account2Model());
    iconBoxModel = createModel(context, () => IconBoxModel());
  }

  @override
  void dispose() {
    account2Model.dispose();
    iconBoxModel.dispose();
  }
}

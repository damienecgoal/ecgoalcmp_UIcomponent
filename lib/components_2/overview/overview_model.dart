import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'overview_widget.dart' show OverviewWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OverviewModel extends FlutterFlowModel<OverviewWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel;

  @override
  void initState(BuildContext context) {
    iconBoxModel = createModel(context, () => IconBoxModel());
  }

  @override
  void dispose() {
    iconBoxModel.dispose();
  }
}

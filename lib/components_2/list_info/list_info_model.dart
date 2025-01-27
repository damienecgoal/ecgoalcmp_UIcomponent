import '/components_2/icon_box/icon_box_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'list_info_widget.dart' show ListInfoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListInfoModel extends FlutterFlowModel<ListInfoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for StatusCard component.
  late StatusCardModel statusCardModel;
  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel;

  @override
  void initState(BuildContext context) {
    statusCardModel = createModel(context, () => StatusCardModel());
    iconBoxModel = createModel(context, () => IconBoxModel());
  }

  @override
  void dispose() {
    statusCardModel.dispose();
    iconBoxModel.dispose();
  }
}

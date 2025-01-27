import '/components/nodal/shipping_action/shipping_action_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'server_key_widget.dart' show ServerKeyWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ServerKeyModel extends FlutterFlowModel<ServerKeyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for StatusCard component.
  late StatusCardModel statusCardModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  @override
  void initState(BuildContext context) {
    statusCardModel = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    statusCardModel.dispose();
  }
}

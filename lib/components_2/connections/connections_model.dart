import '/components/nodal/connection_action/connection_action_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'connections_widget.dart' show ConnectionsWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ConnectionsModel extends FlutterFlowModel<ConnectionsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for StatusCard component.
  late StatusCardModel statusCardModel1;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel2;

  @override
  void initState(BuildContext context) {
    statusCardModel1 = createModel(context, () => StatusCardModel());
    statusCardModel2 = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    statusCardModel1.dispose();
    statusCardModel2.dispose();
  }
}

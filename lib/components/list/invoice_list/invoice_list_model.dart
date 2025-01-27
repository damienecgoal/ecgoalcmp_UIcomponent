import '/components/nodal/project_action/project_action_widget.dart';
import '/components_2/icon_container_circle/icon_container_circle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'invoice_list_widget.dart' show InvoiceListWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class InvoiceListModel extends FlutterFlowModel<InvoiceListWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IconContainerCircle component.
  late IconContainerCircleModel iconContainerCircleModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;

  @override
  void initState(BuildContext context) {
    iconContainerCircleModel =
        createModel(context, () => IconContainerCircleModel());
  }

  @override
  void dispose() {
    iconContainerCircleModel.dispose();
  }
}

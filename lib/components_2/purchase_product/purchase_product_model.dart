import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'purchase_product_widget.dart' show PurchaseProductWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PurchaseProductModel extends FlutterFlowModel<PurchaseProductWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;

  @override
  void initState(BuildContext context) {
    statusCardModel = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    statusCardModel.dispose();
  }
}

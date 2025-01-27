import '/components_2/icon_container_circle/icon_container_circle_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'invoice_list_widget.dart' show InvoiceListWidget;
import 'package:flutter/material.dart';

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

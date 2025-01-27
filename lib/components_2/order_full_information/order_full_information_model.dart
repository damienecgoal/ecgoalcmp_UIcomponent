import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_full_information_widget.dart' show OrderFullInformationWidget;
import 'package:flutter/material.dart';

class OrderFullInformationModel
    extends FlutterFlowModel<OrderFullInformationWidget> {
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

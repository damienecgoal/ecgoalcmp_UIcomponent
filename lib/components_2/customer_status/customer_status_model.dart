import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'customer_status_widget.dart' show CustomerStatusWidget;
import 'package:flutter/material.dart';

class CustomerStatusModel extends FlutterFlowModel<CustomerStatusWidget> {
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

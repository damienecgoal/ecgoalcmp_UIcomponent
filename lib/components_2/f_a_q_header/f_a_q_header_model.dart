import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'f_a_q_header_widget.dart' show FAQHeaderWidget;
import 'package:flutter/material.dart';

class FAQHeaderModel extends FlutterFlowModel<FAQHeaderWidget> {
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

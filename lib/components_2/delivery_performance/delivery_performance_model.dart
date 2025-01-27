import '/components/up_down_text/up_down_text_widget.dart';
import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'delivery_performance_widget.dart' show DeliveryPerformanceWidget;
import 'package:flutter/material.dart';

class DeliveryPerformanceModel
    extends FlutterFlowModel<DeliveryPerformanceWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel;
  // Model for UpDownText component.
  late UpDownTextModel upDownTextModel;

  @override
  void initState(BuildContext context) {
    iconBoxModel = createModel(context, () => IconBoxModel());
    upDownTextModel = createModel(context, () => UpDownTextModel());
  }

  @override
  void dispose() {
    iconBoxModel.dispose();
    upDownTextModel.dispose();
  }
}

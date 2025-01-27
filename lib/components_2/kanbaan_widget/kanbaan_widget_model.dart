import '/components_2/lable/lable_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'kanbaan_widget_widget.dart' show KanbaanWidgetWidget;
import 'package:flutter/material.dart';

class KanbaanWidgetModel extends FlutterFlowModel<KanbaanWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Lable component.
  late LableModel lableModel;

  @override
  void initState(BuildContext context) {
    lableModel = createModel(context, () => LableModel());
  }

  @override
  void dispose() {
    lableModel.dispose();
  }
}

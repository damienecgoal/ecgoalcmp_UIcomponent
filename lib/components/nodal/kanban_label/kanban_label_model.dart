import '/components_2/labels1/labels1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'kanban_label_widget.dart' show KanbanLabelWidget;
import 'package:flutter/material.dart';

class KanbanLabelModel extends FlutterFlowModel<KanbanLabelWidget> {
  ///  Local state fields for this component.

  String select = 'Business';

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // Model for Labels1 component.
  late Labels1Model labels1Model1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // Model for Labels1 component.
  late Labels1Model labels1Model2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // Model for Labels1 component.
  late Labels1Model labels1Model3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // Model for Labels1 component.
  late Labels1Model labels1Model4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // Model for Labels1 component.
  late Labels1Model labels1Model5;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // Model for Labels1 component.
  late Labels1Model labels1Model6;

  @override
  void initState(BuildContext context) {
    labels1Model1 = createModel(context, () => Labels1Model());
    labels1Model2 = createModel(context, () => Labels1Model());
    labels1Model3 = createModel(context, () => Labels1Model());
    labels1Model4 = createModel(context, () => Labels1Model());
    labels1Model5 = createModel(context, () => Labels1Model());
    labels1Model6 = createModel(context, () => Labels1Model());
  }

  @override
  void dispose() {
    labels1Model1.dispose();
    labels1Model2.dispose();
    labels1Model3.dispose();
    labels1Model4.dispose();
    labels1Model5.dispose();
    labels1Model6.dispose();
  }
}

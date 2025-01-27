import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'project_widget.dart' show ProjectWidget;
import 'package:flutter/material.dart';

class ProjectModel extends FlutterFlowModel<ProjectWidget> {
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

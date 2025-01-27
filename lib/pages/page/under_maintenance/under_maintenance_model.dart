import '/flutter_flow/flutter_flow_util.dart';
import 'under_maintenance_widget.dart' show UnderMaintenanceWidget;
import 'package:flutter/material.dart';

class UnderMaintenanceModel extends FlutterFlowModel<UnderMaintenanceWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

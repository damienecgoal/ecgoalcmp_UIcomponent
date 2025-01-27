import '/flutter_flow/flutter_flow_util.dart';
import 'one_time_password_widget.dart' show OneTimePasswordWidget;
import 'package:flutter/material.dart';

class OneTimePasswordModel extends FlutterFlowModel<OneTimePasswordWidget> {
  ///  Local state fields for this component.

  String? select;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

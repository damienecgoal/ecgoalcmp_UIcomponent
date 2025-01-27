import '/flutter_flow/flutter_flow_util.dart';
import 'help_contant_widget.dart' show HelpContantWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class HelpContantModel extends FlutterFlowModel<HelpContantWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}

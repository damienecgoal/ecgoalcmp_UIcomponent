import '/components/avatar_2/avatar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'all_customers_widget.dart' show AllCustomersWidget;
import 'package:flutter/material.dart';

class AllCustomersModel extends FlutterFlowModel<AllCustomersWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  @override
  void initState(BuildContext context) {
    avatar2Model = createModel(context, () => Avatar2Model());
  }

  @override
  void dispose() {
    avatar2Model.dispose();
  }
}

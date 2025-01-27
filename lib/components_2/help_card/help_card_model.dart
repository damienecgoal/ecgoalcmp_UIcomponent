import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'help_card_widget.dart' show HelpCardWidget;
import 'package:flutter/material.dart';

class HelpCardModel extends FlutterFlowModel<HelpCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  @override
  void initState(BuildContext context) {
    iconBoxModel = createModel(context, () => IconBoxModel());
  }

  @override
  void dispose() {
    iconBoxModel.dispose();
  }
}

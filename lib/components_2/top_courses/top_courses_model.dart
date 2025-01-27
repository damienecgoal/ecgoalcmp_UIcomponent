import '/components_2/icon_box/icon_box_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'top_courses_widget.dart' show TopCoursesWidget;
import 'package:flutter/material.dart';

class TopCoursesModel extends FlutterFlowModel<TopCoursesWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;

  @override
  void initState(BuildContext context) {
    iconBoxModel = createModel(context, () => IconBoxModel());
    statusCardModel = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    iconBoxModel.dispose();
    statusCardModel.dispose();
  }
}

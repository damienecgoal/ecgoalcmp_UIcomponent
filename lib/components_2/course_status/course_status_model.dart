import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'course_status_widget.dart' show CourseStatusWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CourseStatusModel extends FlutterFlowModel<CourseStatusWidget> {
  ///  State fields for stateful widgets in this component.

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

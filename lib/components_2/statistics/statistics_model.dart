import '/components_2/icon_container_circle/icon_container_circle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'statistics_widget.dart' show StatisticsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StatisticsModel extends FlutterFlowModel<StatisticsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IconContainerCircle component.
  late IconContainerCircleModel iconContainerCircleModel;

  @override
  void initState(BuildContext context) {
    iconContainerCircleModel =
        createModel(context, () => IconContainerCircleModel());
  }

  @override
  void dispose() {
    iconContainerCircleModel.dispose();
  }
}

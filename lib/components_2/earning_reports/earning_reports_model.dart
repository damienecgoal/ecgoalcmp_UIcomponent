import '/components/up_down_text/up_down_text_widget.dart';
import '/components_2/icon_container/icon_container_widget.dart';
import '/components_2/title_subtitle/title_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'earning_reports_widget.dart' show EarningReportsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EarningReportsModel extends FlutterFlowModel<EarningReportsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IconContainer component.
  late IconContainerModel iconContainerModel;
  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel;
  // Model for UpDownText component.
  late UpDownTextModel upDownTextModel;

  @override
  void initState(BuildContext context) {
    iconContainerModel = createModel(context, () => IconContainerModel());
    titleSubtitleModel = createModel(context, () => TitleSubtitleModel());
    upDownTextModel = createModel(context, () => UpDownTextModel());
  }

  @override
  void dispose() {
    iconContainerModel.dispose();
    titleSubtitleModel.dispose();
    upDownTextModel.dispose();
  }
}

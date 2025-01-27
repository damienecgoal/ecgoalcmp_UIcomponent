import '/components_2/title_subtitle/title_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'instructors_widget.dart' show InstructorsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InstructorsModel extends FlutterFlowModel<InstructorsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel;

  @override
  void initState(BuildContext context) {
    titleSubtitleModel = createModel(context, () => TitleSubtitleModel());
  }

  @override
  void dispose() {
    titleSubtitleModel.dispose();
  }
}

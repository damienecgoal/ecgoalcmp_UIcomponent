import '/components_2/title_subtitle/title_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'instructors_widget.dart' show InstructorsWidget;
import 'package:flutter/material.dart';

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

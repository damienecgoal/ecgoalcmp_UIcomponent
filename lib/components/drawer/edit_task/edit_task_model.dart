import '/components_2/icon_box/icon_box_widget.dart';
import '/components_2/labels1/labels1_widget.dart';
import '/components_2/text_style/text_style_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_task_widget.dart' show EditTaskWidget;
import 'package:flutter/material.dart';

class EditTaskModel extends FlutterFlowModel<EditTaskWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // Model for Labels1 component.
  late Labels1Model labels1Model;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for Text_Style component.
  late TextStyleModel textStyleModel;

  @override
  void initState(BuildContext context) {
    iconBoxModel = createModel(context, () => IconBoxModel());
    labels1Model = createModel(context, () => Labels1Model());
    textStyleModel = createModel(context, () => TextStyleModel());
  }

  @override
  void dispose() {
    iconBoxModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    labels1Model.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textStyleModel.dispose();
  }
}

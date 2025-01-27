import '/components/cutom_option_1/cutom_option1_widget.dart';
import '/components_2/avatar/avatar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_nodal_widget.dart' show ProfileNodalWidget;
import 'package:flutter/material.dart';

class ProfileNodalModel extends FlutterFlowModel<ProfileNodalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for Avatar component.
  late AvatarModel avatarModel;
  // Model for CutomOption_1 component.
  late CutomOption1Model cutomOption1Model1;
  // Model for CutomOption_1 component.
  late CutomOption1Model cutomOption1Model2;
  // Model for CutomOption_1 component.
  late CutomOption1Model cutomOption1Model3;
  // Model for CutomOption_1 component.
  late CutomOption1Model cutomOption1Model4;
  // Model for CutomOption_1 component.
  late CutomOption1Model cutomOption1Model5;
  // Model for CutomOption_1 component.
  late CutomOption1Model cutomOption1Model6;

  @override
  void initState(BuildContext context) {
    avatarModel = createModel(context, () => AvatarModel());
    cutomOption1Model1 = createModel(context, () => CutomOption1Model());
    cutomOption1Model2 = createModel(context, () => CutomOption1Model());
    cutomOption1Model3 = createModel(context, () => CutomOption1Model());
    cutomOption1Model4 = createModel(context, () => CutomOption1Model());
    cutomOption1Model5 = createModel(context, () => CutomOption1Model());
    cutomOption1Model6 = createModel(context, () => CutomOption1Model());
  }

  @override
  void dispose() {
    avatarModel.dispose();
    cutomOption1Model1.dispose();
    cutomOption1Model2.dispose();
    cutomOption1Model3.dispose();
    cutomOption1Model4.dispose();
    cutomOption1Model5.dispose();
    cutomOption1Model6.dispose();
  }
}

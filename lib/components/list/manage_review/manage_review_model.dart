import '/components/avatar_2/avatar2_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'manage_review_widget.dart' show ManageReviewWidget;
import 'package:flutter/material.dart';

class ManageReviewModel extends FlutterFlowModel<ManageReviewWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;

  @override
  void initState(BuildContext context) {
    avatar2Model = createModel(context, () => Avatar2Model());
    statusCardModel = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    avatar2Model.dispose();
    statusCardModel.dispose();
  }
}

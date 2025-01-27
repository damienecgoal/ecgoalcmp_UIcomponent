import '/components/avatar_2/avatar2_widget.dart';
import '/components/nodal/review_action/review_action_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'details_undefined_widget.dart' show DetailsUndefinedWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DetailsUndefinedModel extends FlutterFlowModel<DetailsUndefinedWidget> {
  ///  Local state fields for this component.

  String? select;

  ///  State fields for stateful widgets in this component.

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

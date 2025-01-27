import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_shopping_widget.dart' show MyShoppingWidget;
import 'package:flutter/material.dart';

class MyShoppingModel extends FlutterFlowModel<MyShoppingWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    statusCardModel = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    statusCardModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

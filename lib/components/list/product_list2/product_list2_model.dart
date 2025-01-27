import '/components_2/custom_switch/custom_switch_widget.dart';
import '/components_2/icon_container_circle/icon_container_circle_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_list2_widget.dart' show ProductList2Widget;
import 'package:flutter/material.dart';

class ProductList2Model extends FlutterFlowModel<ProductList2Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for IconContainerCircle component.
  late IconContainerCircleModel iconContainerCircleModel;
  // Model for Custom_Switch component.
  late CustomSwitchModel customSwitchModel;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;

  @override
  void initState(BuildContext context) {
    iconContainerCircleModel =
        createModel(context, () => IconContainerCircleModel());
    customSwitchModel = createModel(context, () => CustomSwitchModel());
    statusCardModel = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    iconContainerCircleModel.dispose();
    customSwitchModel.dispose();
    statusCardModel.dispose();
  }
}

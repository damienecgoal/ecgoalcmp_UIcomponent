import '/components_2/icon_container_circle/icon_container_circle_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'on_route_vehicles_widget.dart' show OnRouteVehiclesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class OnRouteVehiclesModel extends FlutterFlowModel<OnRouteVehiclesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for IconContainerCircle component.
  late IconContainerCircleModel iconContainerCircleModel;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;

  @override
  void initState(BuildContext context) {
    iconContainerCircleModel =
        createModel(context, () => IconContainerCircleModel());
    statusCardModel = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    iconContainerCircleModel.dispose();
    statusCardModel.dispose();
  }
}

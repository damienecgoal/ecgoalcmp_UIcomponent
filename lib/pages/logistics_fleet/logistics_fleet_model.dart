import '/components_2/fleet/fleet_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'logistics_fleet_widget.dart' show LogisticsFleetWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class LogisticsFleetModel extends FlutterFlowModel<LogisticsFleetWidget> {
  ///  Local state fields for this page.

  bool filter = false;

  bool viewall = true;

  String? list;

  String calaeder = 'Month';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // Model for Fleet component.
  late FleetModel fleetModel1;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // Model for Fleet component.
  late FleetModel fleetModel2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // Model for Fleet component.
  late FleetModel fleetModel3;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // Model for Fleet component.
  late FleetModel fleetModel4;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    fleetModel1 = createModel(context, () => FleetModel());
    fleetModel2 = createModel(context, () => FleetModel());
    fleetModel3 = createModel(context, () => FleetModel());
    fleetModel4 = createModel(context, () => FleetModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    expandableExpandableController1.dispose();
    fleetModel1.dispose();
    expandableExpandableController2.dispose();
    fleetModel2.dispose();
    expandableExpandableController3.dispose();
    fleetModel3.dispose();
    expandableExpandableController4.dispose();
    fleetModel4.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

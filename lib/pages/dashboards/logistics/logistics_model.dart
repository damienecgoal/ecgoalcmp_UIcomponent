import '/components/chart_name/chart_name_widget.dart';
import '/components/list/on_route_vehicles/on_route_vehicles_widget.dart';
import '/components_2/chart_view_box/chart_view_box_widget.dart';
import '/components_2/delivery_performance/delivery_performance_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/icon_container/icon_container_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/vehicles_overview/vehicles_overview_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'logistics_widget.dart' show LogisticsWidget;
import 'package:flutter/material.dart';

class LogisticsModel extends FlutterFlowModel<LogisticsWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // Model for IconContainer component.
  late IconContainerModel iconContainerModel1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // Model for IconContainer component.
  late IconContainerModel iconContainerModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // Model for IconContainer component.
  late IconContainerModel iconContainerModel3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // Model for IconContainer component.
  late IconContainerModel iconContainerModel4;
  // Model for VehiclesOverview component.
  late VehiclesOverviewModel vehiclesOverviewModel1;
  // Model for VehiclesOverview component.
  late VehiclesOverviewModel vehiclesOverviewModel2;
  // Model for VehiclesOverview component.
  late VehiclesOverviewModel vehiclesOverviewModel3;
  // Model for VehiclesOverview component.
  late VehiclesOverviewModel vehiclesOverviewModel4;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for ChartViewBox component.
  late ChartViewBoxModel chartViewBoxModel1;
  // Model for ChartViewBox component.
  late ChartViewBoxModel chartViewBoxModel2;
  // Model for Delivery_Performance component.
  late DeliveryPerformanceModel deliveryPerformanceModel1;
  // Model for Delivery_Performance component.
  late DeliveryPerformanceModel deliveryPerformanceModel2;
  // Model for Delivery_Performance component.
  late DeliveryPerformanceModel deliveryPerformanceModel3;
  // Model for Delivery_Performance component.
  late DeliveryPerformanceModel deliveryPerformanceModel4;
  // Model for Delivery_Performance component.
  late DeliveryPerformanceModel deliveryPerformanceModel5;
  // Model for Delivery_Performance component.
  late DeliveryPerformanceModel deliveryPerformanceModel6;
  // Model for ChartName component.
  late ChartNameModel chartNameModel1;
  // Model for ChartName component.
  late ChartNameModel chartNameModel2;
  // Model for ChartName component.
  late ChartNameModel chartNameModel3;
  // Model for ChartName component.
  late ChartNameModel chartNameModel4;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for OnRoute_Vehicles component.
  late OnRouteVehiclesModel onRouteVehiclesModel1;
  // Model for OnRoute_Vehicles component.
  late OnRouteVehiclesModel onRouteVehiclesModel2;
  // Model for OnRoute_Vehicles component.
  late OnRouteVehiclesModel onRouteVehiclesModel3;
  // Model for OnRoute_Vehicles component.
  late OnRouteVehiclesModel onRouteVehiclesModel4;
  // Model for OnRoute_Vehicles component.
  late OnRouteVehiclesModel onRouteVehiclesModel5;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    iconContainerModel1 = createModel(context, () => IconContainerModel());
    iconContainerModel2 = createModel(context, () => IconContainerModel());
    iconContainerModel3 = createModel(context, () => IconContainerModel());
    iconContainerModel4 = createModel(context, () => IconContainerModel());
    vehiclesOverviewModel1 =
        createModel(context, () => VehiclesOverviewModel());
    vehiclesOverviewModel2 =
        createModel(context, () => VehiclesOverviewModel());
    vehiclesOverviewModel3 =
        createModel(context, () => VehiclesOverviewModel());
    vehiclesOverviewModel4 =
        createModel(context, () => VehiclesOverviewModel());
    chartViewBoxModel1 = createModel(context, () => ChartViewBoxModel());
    chartViewBoxModel2 = createModel(context, () => ChartViewBoxModel());
    deliveryPerformanceModel1 =
        createModel(context, () => DeliveryPerformanceModel());
    deliveryPerformanceModel2 =
        createModel(context, () => DeliveryPerformanceModel());
    deliveryPerformanceModel3 =
        createModel(context, () => DeliveryPerformanceModel());
    deliveryPerformanceModel4 =
        createModel(context, () => DeliveryPerformanceModel());
    deliveryPerformanceModel5 =
        createModel(context, () => DeliveryPerformanceModel());
    deliveryPerformanceModel6 =
        createModel(context, () => DeliveryPerformanceModel());
    chartNameModel1 = createModel(context, () => ChartNameModel());
    chartNameModel2 = createModel(context, () => ChartNameModel());
    chartNameModel3 = createModel(context, () => ChartNameModel());
    chartNameModel4 = createModel(context, () => ChartNameModel());
    onRouteVehiclesModel1 = createModel(context, () => OnRouteVehiclesModel());
    onRouteVehiclesModel2 = createModel(context, () => OnRouteVehiclesModel());
    onRouteVehiclesModel3 = createModel(context, () => OnRouteVehiclesModel());
    onRouteVehiclesModel4 = createModel(context, () => OnRouteVehiclesModel());
    onRouteVehiclesModel5 = createModel(context, () => OnRouteVehiclesModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    iconContainerModel1.dispose();
    iconContainerModel2.dispose();
    iconContainerModel3.dispose();
    iconContainerModel4.dispose();
    vehiclesOverviewModel1.dispose();
    vehiclesOverviewModel2.dispose();
    vehiclesOverviewModel3.dispose();
    vehiclesOverviewModel4.dispose();
    chartViewBoxModel1.dispose();
    chartViewBoxModel2.dispose();
    deliveryPerformanceModel1.dispose();
    deliveryPerformanceModel2.dispose();
    deliveryPerformanceModel3.dispose();
    deliveryPerformanceModel4.dispose();
    deliveryPerformanceModel5.dispose();
    deliveryPerformanceModel6.dispose();
    chartNameModel1.dispose();
    chartNameModel2.dispose();
    chartNameModel3.dispose();
    chartNameModel4.dispose();
    tabBarController?.dispose();
    onRouteVehiclesModel1.dispose();
    onRouteVehiclesModel2.dispose();
    onRouteVehiclesModel3.dispose();
    onRouteVehiclesModel4.dispose();
    onRouteVehiclesModel5.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

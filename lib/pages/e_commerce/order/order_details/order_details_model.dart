import '/components/list/order_detail/order_detail_widget.dart';
import '/components_2/customer/customer_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/icon_container_circle/icon_container_circle_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_details_widget.dart' show OrderDetailsWidget;
import 'package:flutter/material.dart';

class OrderDetailsModel extends FlutterFlowModel<OrderDetailsWidget> {
  ///  Local state fields for this page.

  bool inStock = false;

  String? organize;

  String? tags;

  String inventoru = 'Restock';

  String shipping = 'Fulfilled by Company name';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Order_Detail component.
  late OrderDetailModel orderDetailModel1;
  // Model for Order_Detail component.
  late OrderDetailModel orderDetailModel2;
  // Model for Order_Detail component.
  late OrderDetailModel orderDetailModel3;
  // Model for Order_Detail component.
  late OrderDetailModel orderDetailModel4;
  // Model for Customer component.
  late CustomerModel customerModel;
  // Model for IconContainerCircle component.
  late IconContainerCircleModel iconContainerCircleModel;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    orderDetailModel1 = createModel(context, () => OrderDetailModel());
    orderDetailModel2 = createModel(context, () => OrderDetailModel());
    orderDetailModel3 = createModel(context, () => OrderDetailModel());
    orderDetailModel4 = createModel(context, () => OrderDetailModel());
    customerModel = createModel(context, () => CustomerModel());
    iconContainerCircleModel =
        createModel(context, () => IconContainerCircleModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    orderDetailModel1.dispose();
    orderDetailModel2.dispose();
    orderDetailModel3.dispose();
    orderDetailModel4.dispose();
    customerModel.dispose();
    iconContainerCircleModel.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

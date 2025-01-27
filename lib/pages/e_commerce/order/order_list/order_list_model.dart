import '/auth/base_auth_user_provider.dart';
import '/components/drawer/add_category/add_category_widget.dart';
import '/components/list/order_list2/order_list2_widget.dart';
import '/components/nodal/export_nodal/export_nodal_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/order_full_information/order_full_information_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'order_list_widget.dart' show OrderListWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class OrderListModel extends FlutterFlowModel<OrderListWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for Order_Full_Information component.
  late OrderFullInformationModel orderFullInformationModel1;
  // Model for Order_Full_Information component.
  late OrderFullInformationModel orderFullInformationModel2;
  // Model for Order_Full_Information component.
  late OrderFullInformationModel orderFullInformationModel3;
  // Model for Order_Full_Information component.
  late OrderFullInformationModel orderFullInformationModel4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Order_List2 component.
  late OrderList2Model orderList2Model1;
  // Model for Order_List2 component.
  late OrderList2Model orderList2Model2;
  // Model for Order_List2 component.
  late OrderList2Model orderList2Model3;
  // Model for Order_List2 component.
  late OrderList2Model orderList2Model4;
  // Model for Order_List2 component.
  late OrderList2Model orderList2Model5;
  // Model for Order_List2 component.
  late OrderList2Model orderList2Model6;
  // Model for Order_List2 component.
  late OrderList2Model orderList2Model7;
  // Model for Order_List2 component.
  late OrderList2Model orderList2Model8;
  // Model for Order_List2 component.
  late OrderList2Model orderList2Model9;
  // Model for Order_List2 component.
  late OrderList2Model orderList2Model10;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    orderFullInformationModel1 =
        createModel(context, () => OrderFullInformationModel());
    orderFullInformationModel2 =
        createModel(context, () => OrderFullInformationModel());
    orderFullInformationModel3 =
        createModel(context, () => OrderFullInformationModel());
    orderFullInformationModel4 =
        createModel(context, () => OrderFullInformationModel());
    orderList2Model1 = createModel(context, () => OrderList2Model());
    orderList2Model2 = createModel(context, () => OrderList2Model());
    orderList2Model3 = createModel(context, () => OrderList2Model());
    orderList2Model4 = createModel(context, () => OrderList2Model());
    orderList2Model5 = createModel(context, () => OrderList2Model());
    orderList2Model6 = createModel(context, () => OrderList2Model());
    orderList2Model7 = createModel(context, () => OrderList2Model());
    orderList2Model8 = createModel(context, () => OrderList2Model());
    orderList2Model9 = createModel(context, () => OrderList2Model());
    orderList2Model10 = createModel(context, () => OrderList2Model());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    orderFullInformationModel1.dispose();
    orderFullInformationModel2.dispose();
    orderFullInformationModel3.dispose();
    orderFullInformationModel4.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    orderList2Model1.dispose();
    orderList2Model2.dispose();
    orderList2Model3.dispose();
    orderList2Model4.dispose();
    orderList2Model5.dispose();
    orderList2Model6.dispose();
    orderList2Model7.dispose();
    orderList2Model8.dispose();
    orderList2Model9.dispose();
    orderList2Model10.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

import '/auth/base_auth_user_provider.dart';
import '/components/drawer/add_customer/add_customer_widget.dart';
import '/components/list/all_customers/all_customers_widget.dart';
import '/components/nodal/export_nodal/export_nodal_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'all_customer_widget.dart' show AllCustomerWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AllCustomerModel extends FlutterFlowModel<AllCustomerWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
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
  // Model for AllCustomers component.
  late AllCustomersModel allCustomersModel1;
  // Model for AllCustomers component.
  late AllCustomersModel allCustomersModel2;
  // Model for AllCustomers component.
  late AllCustomersModel allCustomersModel3;
  // Model for AllCustomers component.
  late AllCustomersModel allCustomersModel4;
  // Model for AllCustomers component.
  late AllCustomersModel allCustomersModel5;
  // Model for AllCustomers component.
  late AllCustomersModel allCustomersModel6;
  // Model for AllCustomers component.
  late AllCustomersModel allCustomersModel7;
  // Model for AllCustomers component.
  late AllCustomersModel allCustomersModel8;
  // Model for AllCustomers component.
  late AllCustomersModel allCustomersModel9;
  // Model for AllCustomers component.
  late AllCustomersModel allCustomersModel10;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    allCustomersModel1 = createModel(context, () => AllCustomersModel());
    allCustomersModel2 = createModel(context, () => AllCustomersModel());
    allCustomersModel3 = createModel(context, () => AllCustomersModel());
    allCustomersModel4 = createModel(context, () => AllCustomersModel());
    allCustomersModel5 = createModel(context, () => AllCustomersModel());
    allCustomersModel6 = createModel(context, () => AllCustomersModel());
    allCustomersModel7 = createModel(context, () => AllCustomersModel());
    allCustomersModel8 = createModel(context, () => AllCustomersModel());
    allCustomersModel9 = createModel(context, () => AllCustomersModel());
    allCustomersModel10 = createModel(context, () => AllCustomersModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    allCustomersModel1.dispose();
    allCustomersModel2.dispose();
    allCustomersModel3.dispose();
    allCustomersModel4.dispose();
    allCustomersModel5.dispose();
    allCustomersModel6.dispose();
    allCustomersModel7.dispose();
    allCustomersModel8.dispose();
    allCustomersModel9.dispose();
    allCustomersModel10.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

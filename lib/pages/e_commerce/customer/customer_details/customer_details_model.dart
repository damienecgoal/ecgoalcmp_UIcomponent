import '/auth/base_auth_user_provider.dart';
import '/components/edit_popup/add_new_address/add_new_address_widget.dart';
import '/components/edit_popup/edit_card/edit_card_widget.dart';
import '/components/edit_popup/edit_user_information/edit_user_information_widget.dart';
import '/components/edit_popup/one_time_password/one_time_password_widget.dart';
import '/components/edit_popup/upgrade_plan/upgrade_plan_widget.dart';
import '/components/list/order_placed/order_placed_widget.dart';
import '/components/list/recent_devices/recent_devices_widget.dart';
import '/components/nodal/address_book/address_book_widget.dart';
import '/components/nodal/method_primary/method_primary_widget.dart';
import '/components/popup/warning_delete/warning_delete_widget.dart';
import '/components_2/customer_status/customer_status_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/icon_box/icon_box_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/overview/overview_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'customer_details_widget.dart' show CustomerDetailsWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CustomerDetailsModel extends FlutterFlowModel<CustomerDetailsWidget> {
  ///  Local state fields for this page.

  String? activeTab = 'Overview';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for Customer_Status component.
  late CustomerStatusModel customerStatusModel1;
  // Model for Customer_Status component.
  late CustomerStatusModel customerStatusModel2;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for RecentDevices component.
  late RecentDevicesModel recentDevicesModel1;
  // Model for RecentDevices component.
  late RecentDevicesModel recentDevicesModel2;
  // Model for RecentDevices component.
  late RecentDevicesModel recentDevicesModel3;
  // Model for RecentDevices component.
  late RecentDevicesModel recentDevicesModel4;
  // Model for RecentDevices component.
  late RecentDevicesModel recentDevicesModel5;
  // Model for RecentDevices component.
  late RecentDevicesModel recentDevicesModel6;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // Model for StatusCard component.
  late StatusCardModel statusCardModel2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

  // Model for StatusCard component.
  late StatusCardModel statusCardModel3;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController6;

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for Checkbox widget.
  bool? checkboxValue8;
  // State field(s) for Checkbox widget.
  bool? checkboxValue9;
  // State field(s) for Checkbox widget.
  bool? checkboxValue10;
  // State field(s) for Checkbox widget.
  bool? checkboxValue11;
  // State field(s) for Checkbox widget.
  bool? checkboxValue12;
  // Model for Overview component.
  late OverviewModel overviewModel1;
  // Model for Overview component.
  late OverviewModel overviewModel2;
  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel4;
  // Model for Overview component.
  late OverviewModel overviewModel3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue13;
  // Model for Order_Placed component.
  late OrderPlacedModel orderPlacedModel1;
  // Model for Order_Placed component.
  late OrderPlacedModel orderPlacedModel2;
  // Model for Order_Placed component.
  late OrderPlacedModel orderPlacedModel3;
  // Model for Order_Placed component.
  late OrderPlacedModel orderPlacedModel4;
  // Model for Order_Placed component.
  late OrderPlacedModel orderPlacedModel5;
  // Model for Order_Placed component.
  late OrderPlacedModel orderPlacedModel6;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    customerStatusModel1 = createModel(context, () => CustomerStatusModel());
    customerStatusModel2 = createModel(context, () => CustomerStatusModel());
    statusCardModel1 = createModel(context, () => StatusCardModel());
    passwordVisibility1 = false;
    passwordVisibility2 = false;
    recentDevicesModel1 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel2 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel3 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel4 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel5 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel6 = createModel(context, () => RecentDevicesModel());
    statusCardModel2 = createModel(context, () => StatusCardModel());
    statusCardModel3 = createModel(context, () => StatusCardModel());
    overviewModel1 = createModel(context, () => OverviewModel());
    overviewModel2 = createModel(context, () => OverviewModel());
    iconBoxModel = createModel(context, () => IconBoxModel());
    statusCardModel4 = createModel(context, () => StatusCardModel());
    overviewModel3 = createModel(context, () => OverviewModel());
    orderPlacedModel1 = createModel(context, () => OrderPlacedModel());
    orderPlacedModel2 = createModel(context, () => OrderPlacedModel());
    orderPlacedModel3 = createModel(context, () => OrderPlacedModel());
    orderPlacedModel4 = createModel(context, () => OrderPlacedModel());
    orderPlacedModel5 = createModel(context, () => OrderPlacedModel());
    orderPlacedModel6 = createModel(context, () => OrderPlacedModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    customerStatusModel1.dispose();
    customerStatusModel2.dispose();
    statusCardModel1.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    recentDevicesModel1.dispose();
    recentDevicesModel2.dispose();
    recentDevicesModel3.dispose();
    recentDevicesModel4.dispose();
    recentDevicesModel5.dispose();
    recentDevicesModel6.dispose();
    expandableExpandableController1.dispose();
    statusCardModel2.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
    expandableExpandableController5.dispose();
    statusCardModel3.dispose();
    expandableExpandableController6.dispose();
    overviewModel1.dispose();
    overviewModel2.dispose();
    iconBoxModel.dispose();
    statusCardModel4.dispose();
    overviewModel3.dispose();
    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    orderPlacedModel1.dispose();
    orderPlacedModel2.dispose();
    orderPlacedModel3.dispose();
    orderPlacedModel4.dispose();
    orderPlacedModel5.dispose();
    orderPlacedModel6.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

import '/auth/base_auth_user_provider.dart';
import '/components/edit_popup/add_new_address/add_new_address_widget.dart';
import '/components_2/custom_switch/custom_switch_widget.dart';
import '/components_2/estimated_delivery/estimated_delivery_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/icon_box/icon_box_widget.dart';
import '/components_2/my_shopping/my_shopping_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/purchase_product/purchase_product_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/select/select_widget.dart';
import '/components_2/shipping_details/shipping_details_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'checkout_widget.dart' show CheckoutWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CheckoutModel extends FlutterFlowModel<CheckoutWidget> {
  ///  Local state fields for this page.

  String? activeTab = 'Cart';

  String address = 'John Doe';

  String deliverySpeed = 'Standard';

  String payment = 'Card';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // Model for Select component.
  late SelectModel selectModel1;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // Model for Select component.
  late SelectModel selectModel2;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // Model for Select component.
  late SelectModel selectModel3;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel5;
  // Model for EstimatedDelivery component.
  late EstimatedDeliveryModel estimatedDeliveryModel1;
  // Model for EstimatedDelivery component.
  late EstimatedDeliveryModel estimatedDeliveryModel2;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel6;
  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered9 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered10 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Model for Custom_Switch component.
  late CustomSwitchModel customSwitchModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered11 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered12 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel7;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel8;
  // Model for Shipping_Details component.
  late ShippingDetailsModel shippingDetailsModel1;
  // Model for Shipping_Details component.
  late ShippingDetailsModel shippingDetailsModel2;
  // Model for Purchase_Product component.
  late PurchaseProductModel purchaseProductModel1;
  // Model for Purchase_Product component.
  late PurchaseProductModel purchaseProductModel2;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel9;
  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered13 = false;
  // Model for MyShopping component.
  late MyShoppingModel myShoppingModel1;
  // Model for MyShopping component.
  late MyShoppingModel myShoppingModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered14 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered15 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel10;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    statusCardModel1 = createModel(context, () => StatusCardModel());
    statusCardModel2 = createModel(context, () => StatusCardModel());
    selectModel1 = createModel(context, () => SelectModel());
    statusCardModel3 = createModel(context, () => StatusCardModel());
    selectModel2 = createModel(context, () => SelectModel());
    statusCardModel4 = createModel(context, () => StatusCardModel());
    selectModel3 = createModel(context, () => SelectModel());
    statusCardModel5 = createModel(context, () => StatusCardModel());
    estimatedDeliveryModel1 =
        createModel(context, () => EstimatedDeliveryModel());
    estimatedDeliveryModel2 =
        createModel(context, () => EstimatedDeliveryModel());
    statusCardModel6 = createModel(context, () => StatusCardModel());
    iconBoxModel1 = createModel(context, () => IconBoxModel());
    customSwitchModel = createModel(context, () => CustomSwitchModel());
    statusCardModel7 = createModel(context, () => StatusCardModel());
    statusCardModel8 = createModel(context, () => StatusCardModel());
    shippingDetailsModel1 = createModel(context, () => ShippingDetailsModel());
    shippingDetailsModel2 = createModel(context, () => ShippingDetailsModel());
    purchaseProductModel1 = createModel(context, () => PurchaseProductModel());
    purchaseProductModel2 = createModel(context, () => PurchaseProductModel());
    statusCardModel9 = createModel(context, () => StatusCardModel());
    iconBoxModel2 = createModel(context, () => IconBoxModel());
    myShoppingModel1 = createModel(context, () => MyShoppingModel());
    myShoppingModel2 = createModel(context, () => MyShoppingModel());
    statusCardModel10 = createModel(context, () => StatusCardModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    statusCardModel1.dispose();
    statusCardModel2.dispose();
    selectModel1.dispose();
    statusCardModel3.dispose();
    selectModel2.dispose();
    statusCardModel4.dispose();
    selectModel3.dispose();
    statusCardModel5.dispose();
    estimatedDeliveryModel1.dispose();
    estimatedDeliveryModel2.dispose();
    statusCardModel6.dispose();
    iconBoxModel1.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    customSwitchModel.dispose();
    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    statusCardModel7.dispose();
    statusCardModel8.dispose();
    shippingDetailsModel1.dispose();
    shippingDetailsModel2.dispose();
    purchaseProductModel1.dispose();
    purchaseProductModel2.dispose();
    statusCardModel9.dispose();
    iconBoxModel2.dispose();
    myShoppingModel1.dispose();
    myShoppingModel2.dispose();
    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    statusCardModel10.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

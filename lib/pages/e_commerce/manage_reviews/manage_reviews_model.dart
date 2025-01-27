import '/auth/base_auth_user_provider.dart';
import '/components/list/manage_review/manage_review_widget.dart';
import '/components/nodal/export_nodal/export_nodal_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'manage_reviews_widget.dart' show ManageReviewsWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ManageReviewsModel extends FlutterFlowModel<ManageReviewsWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel1;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Manage_Review component.
  late ManageReviewModel manageReviewModel1;
  // Model for Manage_Review component.
  late ManageReviewModel manageReviewModel2;
  // Model for Manage_Review component.
  late ManageReviewModel manageReviewModel3;
  // Model for Manage_Review component.
  late ManageReviewModel manageReviewModel4;
  // Model for Manage_Review component.
  late ManageReviewModel manageReviewModel5;
  // Model for Manage_Review component.
  late ManageReviewModel manageReviewModel6;
  // Model for Manage_Review component.
  late ManageReviewModel manageReviewModel7;
  // Model for Manage_Review component.
  late ManageReviewModel manageReviewModel8;
  // Model for Manage_Review component.
  late ManageReviewModel manageReviewModel9;
  // Model for Manage_Review component.
  late ManageReviewModel manageReviewModel10;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    statusCardModel1 = createModel(context, () => StatusCardModel());
    statusCardModel2 = createModel(context, () => StatusCardModel());
    manageReviewModel1 = createModel(context, () => ManageReviewModel());
    manageReviewModel2 = createModel(context, () => ManageReviewModel());
    manageReviewModel3 = createModel(context, () => ManageReviewModel());
    manageReviewModel4 = createModel(context, () => ManageReviewModel());
    manageReviewModel5 = createModel(context, () => ManageReviewModel());
    manageReviewModel6 = createModel(context, () => ManageReviewModel());
    manageReviewModel7 = createModel(context, () => ManageReviewModel());
    manageReviewModel8 = createModel(context, () => ManageReviewModel());
    manageReviewModel9 = createModel(context, () => ManageReviewModel());
    manageReviewModel10 = createModel(context, () => ManageReviewModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    statusCardModel1.dispose();
    statusCardModel2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    manageReviewModel1.dispose();
    manageReviewModel2.dispose();
    manageReviewModel3.dispose();
    manageReviewModel4.dispose();
    manageReviewModel5.dispose();
    manageReviewModel6.dispose();
    manageReviewModel7.dispose();
    manageReviewModel8.dispose();
    manageReviewModel9.dispose();
    manageReviewModel10.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

import '/auth/base_auth_user_provider.dart';
import '/components/drawer/add_payment/add_payment_widget.dart';
import '/components/drawer/send_invoice/send_invoice_widget.dart';
import '/components/edit_popup/date_peker/date_peker_widget.dart';
import '/components/edit_popup/discount/discount_widget.dart';
import '/components_2/custom_switch/custom_switch_widget.dart';
import '/components_2/five_text_list/five_text_list_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'invoice_edit_widget.dart' show InvoiceEditWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class InvoiceEditModel extends FlutterFlowModel<InvoiceEditWidget> {
  ///  Local state fields for this page.

  bool inStock = false;

  String? organize;

  String? tags;

  String inventoru = 'Restock';

  String shipping = 'Fulfilled by Company name';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // Model for FiveTextList component.
  late FiveTextListModel fiveTextListModel1;
  // Model for FiveTextList component.
  late FiveTextListModel fiveTextListModel2;
  // Model for FiveTextList component.
  late FiveTextListModel fiveTextListModel3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered9 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered10 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered11 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Model for Custom_Switch component.
  late CustomSwitchModel customSwitchModel1;
  // Model for Custom_Switch component.
  late CustomSwitchModel customSwitchModel2;
  // Model for Custom_Switch component.
  late CustomSwitchModel customSwitchModel3;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    fiveTextListModel1 = createModel(context, () => FiveTextListModel());
    fiveTextListModel2 = createModel(context, () => FiveTextListModel());
    fiveTextListModel3 = createModel(context, () => FiveTextListModel());
    customSwitchModel1 = createModel(context, () => CustomSwitchModel());
    customSwitchModel2 = createModel(context, () => CustomSwitchModel());
    customSwitchModel3 = createModel(context, () => CustomSwitchModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    fiveTextListModel1.dispose();
    fiveTextListModel2.dispose();
    fiveTextListModel3.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    customSwitchModel1.dispose();
    customSwitchModel2.dispose();
    customSwitchModel3.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

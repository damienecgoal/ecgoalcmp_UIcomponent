import '/components/list/in_voice_list/in_voice_list_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/invoice_list_overview/invoice_list_overview_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'lnvoice_list_widget.dart' show LnvoiceListWidget;
import 'package:flutter/material.dart';

class LnvoiceListModel extends FlutterFlowModel<LnvoiceListWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for Invoice_list_Overview component.
  late InvoiceListOverviewModel invoiceListOverviewModel1;
  // Model for Invoice_list_Overview component.
  late InvoiceListOverviewModel invoiceListOverviewModel2;
  // Model for Invoice_list_Overview component.
  late InvoiceListOverviewModel invoiceListOverviewModel3;
  // Model for Invoice_list_Overview component.
  late InvoiceListOverviewModel invoiceListOverviewModel4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Model for InVoice_List component.
  late InVoiceListModel inVoiceListModel1;
  // Model for InVoice_List component.
  late InVoiceListModel inVoiceListModel2;
  // Model for InVoice_List component.
  late InVoiceListModel inVoiceListModel3;
  // Model for InVoice_List component.
  late InVoiceListModel inVoiceListModel4;
  // Model for InVoice_List component.
  late InVoiceListModel inVoiceListModel5;
  // Model for InVoice_List component.
  late InVoiceListModel inVoiceListModel6;
  // Model for InVoice_List component.
  late InVoiceListModel inVoiceListModel7;
  // Model for InVoice_List component.
  late InVoiceListModel inVoiceListModel8;
  // Model for InVoice_List component.
  late InVoiceListModel inVoiceListModel9;
  // Model for InVoice_List component.
  late InVoiceListModel inVoiceListModel10;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    invoiceListOverviewModel1 =
        createModel(context, () => InvoiceListOverviewModel());
    invoiceListOverviewModel2 =
        createModel(context, () => InvoiceListOverviewModel());
    invoiceListOverviewModel3 =
        createModel(context, () => InvoiceListOverviewModel());
    invoiceListOverviewModel4 =
        createModel(context, () => InvoiceListOverviewModel());
    inVoiceListModel1 = createModel(context, () => InVoiceListModel());
    inVoiceListModel2 = createModel(context, () => InVoiceListModel());
    inVoiceListModel3 = createModel(context, () => InVoiceListModel());
    inVoiceListModel4 = createModel(context, () => InVoiceListModel());
    inVoiceListModel5 = createModel(context, () => InVoiceListModel());
    inVoiceListModel6 = createModel(context, () => InVoiceListModel());
    inVoiceListModel7 = createModel(context, () => InVoiceListModel());
    inVoiceListModel8 = createModel(context, () => InVoiceListModel());
    inVoiceListModel9 = createModel(context, () => InVoiceListModel());
    inVoiceListModel10 = createModel(context, () => InVoiceListModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    invoiceListOverviewModel1.dispose();
    invoiceListOverviewModel2.dispose();
    invoiceListOverviewModel3.dispose();
    invoiceListOverviewModel4.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    inVoiceListModel1.dispose();
    inVoiceListModel2.dispose();
    inVoiceListModel3.dispose();
    inVoiceListModel4.dispose();
    inVoiceListModel5.dispose();
    inVoiceListModel6.dispose();
    inVoiceListModel7.dispose();
    inVoiceListModel8.dispose();
    inVoiceListModel9.dispose();
    inVoiceListModel10.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

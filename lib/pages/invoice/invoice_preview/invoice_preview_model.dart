import '/components/list/invoice_bill/invoice_bill_widget.dart';
import '/components_2/five_text_list/five_text_list_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/for_text_list/for_text_list_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'invoice_preview_widget.dart' show InvoicePreviewWidget;
import 'package:flutter/material.dart';

class InvoicePreviewModel extends FlutterFlowModel<InvoicePreviewWidget> {
  ///  Local state fields for this page.

  bool inStock = false;

  String? organize;

  String? tags;

  String inventoru = 'Restock';

  String shipping = 'Fulfilled by Company name';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for FiveTextList component.
  late FiveTextListModel fiveTextListModel1;
  // Model for FiveTextList component.
  late FiveTextListModel fiveTextListModel2;
  // Model for FiveTextList component.
  late FiveTextListModel fiveTextListModel3;
  // Model for Invoice_Bill component.
  late InvoiceBillModel invoiceBillModel1;
  // Model for Invoice_Bill component.
  late InvoiceBillModel invoiceBillModel2;
  // Model for Invoice_Bill component.
  late InvoiceBillModel invoiceBillModel3;
  // Model for Invoice_Bill component.
  late InvoiceBillModel invoiceBillModel4;
  // Model for ForTextList component.
  late ForTextListModel forTextListModel;
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
    invoiceBillModel1 = createModel(context, () => InvoiceBillModel());
    invoiceBillModel2 = createModel(context, () => InvoiceBillModel());
    invoiceBillModel3 = createModel(context, () => InvoiceBillModel());
    invoiceBillModel4 = createModel(context, () => InvoiceBillModel());
    forTextListModel = createModel(context, () => ForTextListModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    fiveTextListModel1.dispose();
    fiveTextListModel2.dispose();
    fiveTextListModel3.dispose();
    invoiceBillModel1.dispose();
    invoiceBillModel2.dispose();
    invoiceBillModel3.dispose();
    invoiceBillModel4.dispose();
    forTextListModel.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

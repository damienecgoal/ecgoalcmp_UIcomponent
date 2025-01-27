import '/components/chart_name/chart_name_widget.dart';
import '/components/list/invoice_list/invoice_list_widget.dart';
import '/components/nodal/popular/popular_widget.dart';
import '/components/nodal/refresh_share/refresh_share_widget.dart';
import '/components_2/earning_reports/earning_reports_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/popular_products/popular_products_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/statistics/statistics_widget.dart';
import '/components_2/transactions/transactions_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'dart:math' as math;
import 'e_commerce_widget.dart' show ECommerceWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ECommerceModel extends FlutterFlowModel<ECommerceWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for Statistics component.
  late StatisticsModel statisticsModel1;
  // Model for Statistics component.
  late StatisticsModel statisticsModel2;
  // Model for Statistics component.
  late StatisticsModel statisticsModel3;
  // Model for Statistics component.
  late StatisticsModel statisticsModel4;
  // Model for ChartName component.
  late ChartNameModel chartNameModel1;
  // Model for ChartName component.
  late ChartNameModel chartNameModel2;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Model for EarningReports component.
  late EarningReportsModel earningReportsModel1;
  // Model for EarningReports component.
  late EarningReportsModel earningReportsModel2;
  // Model for EarningReports component.
  late EarningReportsModel earningReportsModel3;
  // Model for PopularProducts component.
  late PopularProductsModel popularProductsModel1;
  // Model for PopularProducts component.
  late PopularProductsModel popularProductsModel2;
  // Model for PopularProducts component.
  late PopularProductsModel popularProductsModel3;
  // Model for PopularProducts component.
  late PopularProductsModel popularProductsModel4;
  // Model for PopularProducts component.
  late PopularProductsModel popularProductsModel5;
  // Model for PopularProducts component.
  late PopularProductsModel popularProductsModel6;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for Transactions component.
  late TransactionsModel transactionsModel1;
  // Model for Transactions component.
  late TransactionsModel transactionsModel2;
  // Model for Transactions component.
  late TransactionsModel transactionsModel3;
  // Model for Transactions component.
  late TransactionsModel transactionsModel4;
  // Model for Transactions component.
  late TransactionsModel transactionsModel5;
  // Model for Transactions component.
  late TransactionsModel transactionsModel6;
  // Model for Transactions component.
  late TransactionsModel transactionsModel7;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Model for InvoiceList component.
  late InvoiceListModel invoiceListModel1;
  // Model for InvoiceList component.
  late InvoiceListModel invoiceListModel2;
  // Model for InvoiceList component.
  late InvoiceListModel invoiceListModel3;
  // Model for InvoiceList component.
  late InvoiceListModel invoiceListModel4;
  // Model for InvoiceList component.
  late InvoiceListModel invoiceListModel5;
  // Model for InvoiceList component.
  late InvoiceListModel invoiceListModel6;
  // Model for InvoiceList component.
  late InvoiceListModel invoiceListModel7;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    statisticsModel1 = createModel(context, () => StatisticsModel());
    statisticsModel2 = createModel(context, () => StatisticsModel());
    statisticsModel3 = createModel(context, () => StatisticsModel());
    statisticsModel4 = createModel(context, () => StatisticsModel());
    chartNameModel1 = createModel(context, () => ChartNameModel());
    chartNameModel2 = createModel(context, () => ChartNameModel());
    earningReportsModel1 = createModel(context, () => EarningReportsModel());
    earningReportsModel2 = createModel(context, () => EarningReportsModel());
    earningReportsModel3 = createModel(context, () => EarningReportsModel());
    popularProductsModel1 = createModel(context, () => PopularProductsModel());
    popularProductsModel2 = createModel(context, () => PopularProductsModel());
    popularProductsModel3 = createModel(context, () => PopularProductsModel());
    popularProductsModel4 = createModel(context, () => PopularProductsModel());
    popularProductsModel5 = createModel(context, () => PopularProductsModel());
    popularProductsModel6 = createModel(context, () => PopularProductsModel());
    transactionsModel1 = createModel(context, () => TransactionsModel());
    transactionsModel2 = createModel(context, () => TransactionsModel());
    transactionsModel3 = createModel(context, () => TransactionsModel());
    transactionsModel4 = createModel(context, () => TransactionsModel());
    transactionsModel5 = createModel(context, () => TransactionsModel());
    transactionsModel6 = createModel(context, () => TransactionsModel());
    transactionsModel7 = createModel(context, () => TransactionsModel());
    invoiceListModel1 = createModel(context, () => InvoiceListModel());
    invoiceListModel2 = createModel(context, () => InvoiceListModel());
    invoiceListModel3 = createModel(context, () => InvoiceListModel());
    invoiceListModel4 = createModel(context, () => InvoiceListModel());
    invoiceListModel5 = createModel(context, () => InvoiceListModel());
    invoiceListModel6 = createModel(context, () => InvoiceListModel());
    invoiceListModel7 = createModel(context, () => InvoiceListModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    statisticsModel1.dispose();
    statisticsModel2.dispose();
    statisticsModel3.dispose();
    statisticsModel4.dispose();
    chartNameModel1.dispose();
    chartNameModel2.dispose();
    earningReportsModel1.dispose();
    earningReportsModel2.dispose();
    earningReportsModel3.dispose();
    popularProductsModel1.dispose();
    popularProductsModel2.dispose();
    popularProductsModel3.dispose();
    popularProductsModel4.dispose();
    popularProductsModel5.dispose();
    popularProductsModel6.dispose();
    tabBarController?.dispose();
    transactionsModel1.dispose();
    transactionsModel2.dispose();
    transactionsModel3.dispose();
    transactionsModel4.dispose();
    transactionsModel5.dispose();
    transactionsModel6.dispose();
    transactionsModel7.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    invoiceListModel1.dispose();
    invoiceListModel2.dispose();
    invoiceListModel3.dispose();
    invoiceListModel4.dispose();
    invoiceListModel5.dispose();
    invoiceListModel6.dispose();
    invoiceListModel7.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

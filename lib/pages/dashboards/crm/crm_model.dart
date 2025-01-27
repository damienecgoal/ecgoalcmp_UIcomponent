import '/components/active_project/active_project_widget.dart';
import '/components/avatar_2/avatar2_widget.dart';
import '/components/earning/earning_widget.dart';
import '/components/nodal/analytics_source_visits/analytics_source_visits_widget.dart';
import '/components/nodal/refresh_share/refresh_share_widget.dart';
import '/components/nodal/view_more_delete/view_more_delete_widget.dart';
import '/components_2/browser_states/browser_states_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/icon_container/icon_container_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/components_2/transaction/transaction_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'crm_widget.dart' show CrmWidget;
import 'dart:math' as math;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CrmModel extends FlutterFlowModel<CrmWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for IconContainer component.
  late IconContainerModel iconContainerModel1;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel1;
  // Model for IconContainer component.
  late IconContainerModel iconContainerModel2;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel2;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel3;
  // Model for BrowserStates component.
  late BrowserStatesModel browserStatesModel1;
  // Model for BrowserStates component.
  late BrowserStatesModel browserStatesModel2;
  // Model for BrowserStates component.
  late BrowserStatesModel browserStatesModel3;
  // Model for BrowserStates component.
  late BrowserStatesModel browserStatesModel4;
  // Model for BrowserStates component.
  late BrowserStatesModel browserStatesModel5;
  // Model for BrowserStates component.
  late BrowserStatesModel browserStatesModel6;
  // Model for Earning component.
  late EarningModel earningModel;
  // Model for ActiveProject component.
  late ActiveProjectModel activeProjectModel1;
  // Model for ActiveProject component.
  late ActiveProjectModel activeProjectModel2;
  // Model for ActiveProject component.
  late ActiveProjectModel activeProjectModel3;
  // Model for ActiveProject component.
  late ActiveProjectModel activeProjectModel4;
  // Model for ActiveProject component.
  late ActiveProjectModel activeProjectModel5;
  // Model for ActiveProject component.
  late ActiveProjectModel activeProjectModel6;
  // Model for Transaction component.
  late TransactionModel transactionModel1;
  // Model for Transaction component.
  late TransactionModel transactionModel2;
  // Model for Transaction component.
  late TransactionModel transactionModel3;
  // Model for Transaction component.
  late TransactionModel transactionModel4;
  // Model for Transaction component.
  late TransactionModel transactionModel5;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    iconContainerModel1 = createModel(context, () => IconContainerModel());
    statusCardModel1 = createModel(context, () => StatusCardModel());
    iconContainerModel2 = createModel(context, () => IconContainerModel());
    statusCardModel2 = createModel(context, () => StatusCardModel());
    statusCardModel3 = createModel(context, () => StatusCardModel());
    browserStatesModel1 = createModel(context, () => BrowserStatesModel());
    browserStatesModel2 = createModel(context, () => BrowserStatesModel());
    browserStatesModel3 = createModel(context, () => BrowserStatesModel());
    browserStatesModel4 = createModel(context, () => BrowserStatesModel());
    browserStatesModel5 = createModel(context, () => BrowserStatesModel());
    browserStatesModel6 = createModel(context, () => BrowserStatesModel());
    earningModel = createModel(context, () => EarningModel());
    activeProjectModel1 = createModel(context, () => ActiveProjectModel());
    activeProjectModel2 = createModel(context, () => ActiveProjectModel());
    activeProjectModel3 = createModel(context, () => ActiveProjectModel());
    activeProjectModel4 = createModel(context, () => ActiveProjectModel());
    activeProjectModel5 = createModel(context, () => ActiveProjectModel());
    activeProjectModel6 = createModel(context, () => ActiveProjectModel());
    transactionModel1 = createModel(context, () => TransactionModel());
    transactionModel2 = createModel(context, () => TransactionModel());
    transactionModel3 = createModel(context, () => TransactionModel());
    transactionModel4 = createModel(context, () => TransactionModel());
    transactionModel5 = createModel(context, () => TransactionModel());
    avatar2Model = createModel(context, () => Avatar2Model());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    iconContainerModel1.dispose();
    statusCardModel1.dispose();
    iconContainerModel2.dispose();
    statusCardModel2.dispose();
    statusCardModel3.dispose();
    browserStatesModel1.dispose();
    browserStatesModel2.dispose();
    browserStatesModel3.dispose();
    browserStatesModel4.dispose();
    browserStatesModel5.dispose();
    browserStatesModel6.dispose();
    earningModel.dispose();
    activeProjectModel1.dispose();
    activeProjectModel2.dispose();
    activeProjectModel3.dispose();
    activeProjectModel4.dispose();
    activeProjectModel5.dispose();
    activeProjectModel6.dispose();
    transactionModel1.dispose();
    transactionModel2.dispose();
    transactionModel3.dispose();
    transactionModel4.dispose();
    transactionModel5.dispose();
    avatar2Model.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

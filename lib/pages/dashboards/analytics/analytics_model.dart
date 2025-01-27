import '/backend/api_requests/api_calls.dart';
import '/components/campaing_state/campaing_state_widget.dart';
import '/components/earning/earning_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/list_header/list_header_widget.dart';
import '/components_2/list_header2/list_header2_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/sales_by_countries/sales_by_countries_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/visit_source/visit_source_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'analytics_widget.dart' show AnalyticsWidget;
import 'package:flutter/material.dart';

class AnalyticsModel extends FlutterFlowModel<AnalyticsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (updateViews)] action in Analytics widget.
  ApiCallResponse? apiResultfgb;
  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for SalesBy_Countries component.
  late SalesByCountriesModel salesByCountriesModel1;
  // Model for SalesBy_Countries component.
  late SalesByCountriesModel salesByCountriesModel2;
  // Model for SalesBy_Countries component.
  late SalesByCountriesModel salesByCountriesModel3;
  // Model for SalesBy_Countries component.
  late SalesByCountriesModel salesByCountriesModel4;
  // Model for SalesBy_Countries component.
  late SalesByCountriesModel salesByCountriesModel5;
  // Model for SalesBy_Countries component.
  late SalesByCountriesModel salesByCountriesModel6;
  // Model for Earning component.
  late EarningModel earningModel1;
  // Model for Earning component.
  late EarningModel earningModel2;
  // Model for CampaingState component.
  late CampaingStateModel campaingStateModel1;
  // Model for CampaingState component.
  late CampaingStateModel campaingStateModel2;
  // Model for CampaingState component.
  late CampaingStateModel campaingStateModel3;
  // Model for CampaingState component.
  late CampaingStateModel campaingStateModel4;
  // Model for CampaingState component.
  late CampaingStateModel campaingStateModel5;
  // Model for CampaingState component.
  late CampaingStateModel campaingStateModel6;
  // Model for VisitSource component.
  late VisitSourceModel visitSourceModel1;
  // Model for VisitSource component.
  late VisitSourceModel visitSourceModel2;
  // Model for VisitSource component.
  late VisitSourceModel visitSourceModel3;
  // Model for VisitSource component.
  late VisitSourceModel visitSourceModel4;
  // Model for VisitSource component.
  late VisitSourceModel visitSourceModel5;
  // Model for VisitSource component.
  late VisitSourceModel visitSourceModel6;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel1;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel2;
  // Model for ListHeader2 component.
  late ListHeader2Model listHeader2Model1;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel3;
  // Model for ListHeader2 component.
  late ListHeader2Model listHeader2Model2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue8;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    salesByCountriesModel1 =
        createModel(context, () => SalesByCountriesModel());
    salesByCountriesModel2 =
        createModel(context, () => SalesByCountriesModel());
    salesByCountriesModel3 =
        createModel(context, () => SalesByCountriesModel());
    salesByCountriesModel4 =
        createModel(context, () => SalesByCountriesModel());
    salesByCountriesModel5 =
        createModel(context, () => SalesByCountriesModel());
    salesByCountriesModel6 =
        createModel(context, () => SalesByCountriesModel());
    earningModel1 = createModel(context, () => EarningModel());
    earningModel2 = createModel(context, () => EarningModel());
    campaingStateModel1 = createModel(context, () => CampaingStateModel());
    campaingStateModel2 = createModel(context, () => CampaingStateModel());
    campaingStateModel3 = createModel(context, () => CampaingStateModel());
    campaingStateModel4 = createModel(context, () => CampaingStateModel());
    campaingStateModel5 = createModel(context, () => CampaingStateModel());
    campaingStateModel6 = createModel(context, () => CampaingStateModel());
    visitSourceModel1 = createModel(context, () => VisitSourceModel());
    visitSourceModel2 = createModel(context, () => VisitSourceModel());
    visitSourceModel3 = createModel(context, () => VisitSourceModel());
    visitSourceModel4 = createModel(context, () => VisitSourceModel());
    visitSourceModel5 = createModel(context, () => VisitSourceModel());
    visitSourceModel6 = createModel(context, () => VisitSourceModel());
    listHeaderModel1 = createModel(context, () => ListHeaderModel());
    listHeaderModel2 = createModel(context, () => ListHeaderModel());
    listHeader2Model1 = createModel(context, () => ListHeader2Model());
    listHeaderModel3 = createModel(context, () => ListHeaderModel());
    listHeader2Model2 = createModel(context, () => ListHeader2Model());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    salesByCountriesModel1.dispose();
    salesByCountriesModel2.dispose();
    salesByCountriesModel3.dispose();
    salesByCountriesModel4.dispose();
    salesByCountriesModel5.dispose();
    salesByCountriesModel6.dispose();
    earningModel1.dispose();
    earningModel2.dispose();
    campaingStateModel1.dispose();
    campaingStateModel2.dispose();
    campaingStateModel3.dispose();
    campaingStateModel4.dispose();
    campaingStateModel5.dispose();
    campaingStateModel6.dispose();
    visitSourceModel1.dispose();
    visitSourceModel2.dispose();
    visitSourceModel3.dispose();
    visitSourceModel4.dispose();
    visitSourceModel5.dispose();
    visitSourceModel6.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    listHeaderModel1.dispose();
    listHeaderModel2.dispose();
    listHeader2Model1.dispose();
    listHeaderModel3.dispose();
    listHeader2Model2.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

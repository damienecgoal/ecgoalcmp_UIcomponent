import '/components_2/footer/footer_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/point_text/point_text_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pricing_widget.dart' show PricingWidget;
import 'package:flutter/material.dart';

class PricingModel extends FlutterFlowModel<PricingWidget> {
  ///  Local state fields for this page.

  String? selectPlan = 'Pro';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for Point_Text component.
  late PointTextModel pointTextModel1;
  // Model for Point_Text component.
  late PointTextModel pointTextModel2;
  // Model for Point_Text component.
  late PointTextModel pointTextModel3;
  // Model for Point_Text component.
  late PointTextModel pointTextModel4;
  // Model for Point_Text component.
  late PointTextModel pointTextModel5;
  // Model for Point_Text component.
  late PointTextModel pointTextModel6;
  // Model for Point_Text component.
  late PointTextModel pointTextModel7;
  // Model for Point_Text component.
  late PointTextModel pointTextModel8;
  // Model for Point_Text component.
  late PointTextModel pointTextModel9;
  // Model for Point_Text component.
  late PointTextModel pointTextModel10;
  // Model for Point_Text component.
  late PointTextModel pointTextModel11;
  // Model for Point_Text component.
  late PointTextModel pointTextModel12;
  // Model for Point_Text component.
  late PointTextModel pointTextModel13;
  // Model for Point_Text component.
  late PointTextModel pointTextModel14;
  // Model for Point_Text component.
  late PointTextModel pointTextModel15;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    statusCardModel = createModel(context, () => StatusCardModel());
    pointTextModel1 = createModel(context, () => PointTextModel());
    pointTextModel2 = createModel(context, () => PointTextModel());
    pointTextModel3 = createModel(context, () => PointTextModel());
    pointTextModel4 = createModel(context, () => PointTextModel());
    pointTextModel5 = createModel(context, () => PointTextModel());
    pointTextModel6 = createModel(context, () => PointTextModel());
    pointTextModel7 = createModel(context, () => PointTextModel());
    pointTextModel8 = createModel(context, () => PointTextModel());
    pointTextModel9 = createModel(context, () => PointTextModel());
    pointTextModel10 = createModel(context, () => PointTextModel());
    pointTextModel11 = createModel(context, () => PointTextModel());
    pointTextModel12 = createModel(context, () => PointTextModel());
    pointTextModel13 = createModel(context, () => PointTextModel());
    pointTextModel14 = createModel(context, () => PointTextModel());
    pointTextModel15 = createModel(context, () => PointTextModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    statusCardModel.dispose();
    pointTextModel1.dispose();
    pointTextModel2.dispose();
    pointTextModel3.dispose();
    pointTextModel4.dispose();
    pointTextModel5.dispose();
    pointTextModel6.dispose();
    pointTextModel7.dispose();
    pointTextModel8.dispose();
    pointTextModel9.dispose();
    pointTextModel10.dispose();
    pointTextModel11.dispose();
    pointTextModel12.dispose();
    pointTextModel13.dispose();
    pointTextModel14.dispose();
    pointTextModel15.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

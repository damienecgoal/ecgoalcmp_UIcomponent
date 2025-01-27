import '/auth/base_auth_user_provider.dart';
import '/components_2/f_a_q_header/f_a_q_header_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/help_card/help_card_widget.dart';
import '/components_2/help_contant/help_contant_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'faq_widget.dart' show FaqWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FaqModel extends FlutterFlowModel<FaqWidget> {
  ///  Local state fields for this page.

  String? activeTab = 'Payment';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // Model for FAQ_Header component.
  late FAQHeaderModel fAQHeaderModel1;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel1;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel2;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel3;
  // Model for FAQ_Header component.
  late FAQHeaderModel fAQHeaderModel2;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel4;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel5;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel6;
  // Model for FAQ_Header component.
  late FAQHeaderModel fAQHeaderModel3;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel7;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel8;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel9;
  // Model for FAQ_Header component.
  late FAQHeaderModel fAQHeaderModel4;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel10;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel11;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel12;
  // Model for FAQ_Header component.
  late FAQHeaderModel fAQHeaderModel5;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel13;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel14;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel15;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel16;
  // Model for Help_Contant component.
  late HelpContantModel helpContantModel17;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;
  // Model for Help_Card component.
  late HelpCardModel helpCardModel1;
  // Model for Help_Card component.
  late HelpCardModel helpCardModel2;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    fAQHeaderModel1 = createModel(context, () => FAQHeaderModel());
    helpContantModel1 = createModel(context, () => HelpContantModel());
    helpContantModel2 = createModel(context, () => HelpContantModel());
    helpContantModel3 = createModel(context, () => HelpContantModel());
    fAQHeaderModel2 = createModel(context, () => FAQHeaderModel());
    helpContantModel4 = createModel(context, () => HelpContantModel());
    helpContantModel5 = createModel(context, () => HelpContantModel());
    helpContantModel6 = createModel(context, () => HelpContantModel());
    fAQHeaderModel3 = createModel(context, () => FAQHeaderModel());
    helpContantModel7 = createModel(context, () => HelpContantModel());
    helpContantModel8 = createModel(context, () => HelpContantModel());
    helpContantModel9 = createModel(context, () => HelpContantModel());
    fAQHeaderModel4 = createModel(context, () => FAQHeaderModel());
    helpContantModel10 = createModel(context, () => HelpContantModel());
    helpContantModel11 = createModel(context, () => HelpContantModel());
    helpContantModel12 = createModel(context, () => HelpContantModel());
    fAQHeaderModel5 = createModel(context, () => FAQHeaderModel());
    helpContantModel13 = createModel(context, () => HelpContantModel());
    helpContantModel14 = createModel(context, () => HelpContantModel());
    helpContantModel15 = createModel(context, () => HelpContantModel());
    helpContantModel16 = createModel(context, () => HelpContantModel());
    helpContantModel17 = createModel(context, () => HelpContantModel());
    statusCardModel = createModel(context, () => StatusCardModel());
    helpCardModel1 = createModel(context, () => HelpCardModel());
    helpCardModel2 = createModel(context, () => HelpCardModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    fAQHeaderModel1.dispose();
    helpContantModel1.dispose();
    helpContantModel2.dispose();
    helpContantModel3.dispose();
    fAQHeaderModel2.dispose();
    helpContantModel4.dispose();
    helpContantModel5.dispose();
    helpContantModel6.dispose();
    fAQHeaderModel3.dispose();
    helpContantModel7.dispose();
    helpContantModel8.dispose();
    helpContantModel9.dispose();
    fAQHeaderModel4.dispose();
    helpContantModel10.dispose();
    helpContantModel11.dispose();
    helpContantModel12.dispose();
    fAQHeaderModel5.dispose();
    helpContantModel13.dispose();
    helpContantModel14.dispose();
    helpContantModel15.dispose();
    helpContantModel16.dispose();
    helpContantModel17.dispose();
    statusCardModel.dispose();
    helpCardModel1.dispose();
    helpCardModel2.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

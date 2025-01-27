import '/components/avatar_2/avatar2_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/labels/labels_widget.dart';
import '/components_2/mail_card/mail_card_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/text_style/text_style_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'email_widget.dart' show EmailWidget;
import 'package:flutter/material.dart';

class EmailModel extends FlutterFlowModel<EmailWidget> {
  ///  Local state fields for this page.

  String compose = 'Inbox';

  bool userEmail = false;

  bool earlierMessage = false;

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for Labels component.
  late LabelsModel labelsModel1;
  // Model for Labels component.
  late LabelsModel labelsModel2;
  // Model for Labels component.
  late LabelsModel labelsModel3;
  // Model for Labels component.
  late LabelsModel labelsModel4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for MailCard component.
  late MailCardModel mailCardModel1;
  // Model for MailCard component.
  late MailCardModel mailCardModel2;
  // Model for MailCard component.
  late MailCardModel mailCardModel3;
  // Model for MailCard component.
  late MailCardModel mailCardModel4;
  // Model for MailCard component.
  late MailCardModel mailCardModel5;
  // Model for MailCard component.
  late MailCardModel mailCardModel6;
  // Model for MailCard component.
  late MailCardModel mailCardModel7;
  // Model for MailCard component.
  late MailCardModel mailCardModel8;
  // Model for MailCard component.
  late MailCardModel mailCardModel9;
  // Model for MailCard component.
  late MailCardModel mailCardModel10;
  // Model for MailCard component.
  late MailCardModel mailCardModel11;
  // Model for MailCard component.
  late MailCardModel mailCardModel12;
  // Model for MailCard component.
  late MailCardModel mailCardModel13;
  // Model for MailCard component.
  late MailCardModel mailCardModel14;
  // Model for MailCard component.
  late MailCardModel mailCardModel15;
  // Model for MailCard component.
  late MailCardModel mailCardModel16;
  // Model for MailCard component.
  late MailCardModel mailCardModel17;
  // Model for MailCard component.
  late MailCardModel mailCardModel18;
  // Model for MailCard component.
  late MailCardModel mailCardModel19;
  // Model for MailCard component.
  late MailCardModel mailCardModel20;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model1;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model2;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model3;
  // Model for Text_Style component.
  late TextStyleModel textStyleModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    labelsModel1 = createModel(context, () => LabelsModel());
    labelsModel2 = createModel(context, () => LabelsModel());
    labelsModel3 = createModel(context, () => LabelsModel());
    labelsModel4 = createModel(context, () => LabelsModel());
    mailCardModel1 = createModel(context, () => MailCardModel());
    mailCardModel2 = createModel(context, () => MailCardModel());
    mailCardModel3 = createModel(context, () => MailCardModel());
    mailCardModel4 = createModel(context, () => MailCardModel());
    mailCardModel5 = createModel(context, () => MailCardModel());
    mailCardModel6 = createModel(context, () => MailCardModel());
    mailCardModel7 = createModel(context, () => MailCardModel());
    mailCardModel8 = createModel(context, () => MailCardModel());
    mailCardModel9 = createModel(context, () => MailCardModel());
    mailCardModel10 = createModel(context, () => MailCardModel());
    mailCardModel11 = createModel(context, () => MailCardModel());
    mailCardModel12 = createModel(context, () => MailCardModel());
    mailCardModel13 = createModel(context, () => MailCardModel());
    mailCardModel14 = createModel(context, () => MailCardModel());
    mailCardModel15 = createModel(context, () => MailCardModel());
    mailCardModel16 = createModel(context, () => MailCardModel());
    mailCardModel17 = createModel(context, () => MailCardModel());
    mailCardModel18 = createModel(context, () => MailCardModel());
    mailCardModel19 = createModel(context, () => MailCardModel());
    mailCardModel20 = createModel(context, () => MailCardModel());
    avatar2Model1 = createModel(context, () => Avatar2Model());
    avatar2Model2 = createModel(context, () => Avatar2Model());
    avatar2Model3 = createModel(context, () => Avatar2Model());
    textStyleModel = createModel(context, () => TextStyleModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    labelsModel1.dispose();
    labelsModel2.dispose();
    labelsModel3.dispose();
    labelsModel4.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    mailCardModel1.dispose();
    mailCardModel2.dispose();
    mailCardModel3.dispose();
    mailCardModel4.dispose();
    mailCardModel5.dispose();
    mailCardModel6.dispose();
    mailCardModel7.dispose();
    mailCardModel8.dispose();
    mailCardModel9.dispose();
    mailCardModel10.dispose();
    mailCardModel11.dispose();
    mailCardModel12.dispose();
    mailCardModel13.dispose();
    mailCardModel14.dispose();
    mailCardModel15.dispose();
    mailCardModel16.dispose();
    mailCardModel17.dispose();
    mailCardModel18.dispose();
    mailCardModel19.dispose();
    mailCardModel20.dispose();
    avatar2Model1.dispose();
    avatar2Model2.dispose();
    avatar2Model3.dispose();
    textStyleModel.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    footerModel.dispose();
    searchBarModel.dispose();
  }
}

import '/components_2/custom_switch/custom_switch_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/icon_box/icon_box_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/select/select_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_deal_widget.dart' show CreateDealWidget;
import 'package:flutter/material.dart';

class CreateDealModel extends FlutterFlowModel<CreateDealWidget> {
  ///  Local state fields for this page.

  String? activeTab = 'Cart';

  String deal = 'Percentage';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel1;
  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel2;
  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel3;
  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue1;
  FormFieldController<List<String>>? dropDownValueController1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue2;
  FormFieldController<List<String>>? dropDownValueController2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue3;
  FormFieldController<List<String>>? dropDownValueController3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered9 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered10 = false;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue4;
  FormFieldController<List<String>>? dropDownValueController4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered11 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered12 = false;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue5;
  FormFieldController<List<String>>? dropDownValueController5;
  // Model for Custom_Switch component.
  late CustomSwitchModel customSwitchModel1;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;
  // Model for Custom_Switch component.
  late CustomSwitchModel customSwitchModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered13 = false;
  // Model for Select component.
  late SelectModel selectModel1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered14 = false;
  // Model for Select component.
  late SelectModel selectModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered15 = false;
  // Model for Select component.
  late SelectModel selectModel3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered16 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered17 = false;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue6;
  FormFieldController<List<String>>? dropDownValueController6;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    iconBoxModel1 = createModel(context, () => IconBoxModel());
    iconBoxModel2 = createModel(context, () => IconBoxModel());
    iconBoxModel3 = createModel(context, () => IconBoxModel());
    iconBoxModel4 = createModel(context, () => IconBoxModel());
    customSwitchModel1 = createModel(context, () => CustomSwitchModel());
    statusCardModel = createModel(context, () => StatusCardModel());
    customSwitchModel2 = createModel(context, () => CustomSwitchModel());
    selectModel1 = createModel(context, () => SelectModel());
    selectModel2 = createModel(context, () => SelectModel());
    selectModel3 = createModel(context, () => SelectModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    iconBoxModel1.dispose();
    iconBoxModel2.dispose();
    iconBoxModel3.dispose();
    iconBoxModel4.dispose();
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

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    customSwitchModel1.dispose();
    statusCardModel.dispose();
    customSwitchModel2.dispose();
    selectModel1.dispose();
    selectModel2.dispose();
    selectModel3.dispose();
    textFieldFocusNode8?.dispose();
    textController8?.dispose();

    footerModel.dispose();
    searchBarModel.dispose();
  }
}

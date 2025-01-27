import '/auth/base_auth_user_provider.dart';
import '/components/accounts/accounts_widget.dart';
import '/components/edit_popup/one_time_password/one_time_password_widget.dart';
import '/components/edit_popup/upgrade_plan/upgrade_plan_widget.dart';
import '/components/list/in_voice_list/in_voice_list_widget.dart';
import '/components/list/payment_card/payment_card_widget.dart';
import '/components/list/recent_devices/recent_devices_widget.dart';
import '/components/popup/warning_popup/warning_popup_widget.dart';
import '/components_2/custom_switch/custom_switch_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/point_text/point_text_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/server_key/server_key_widget.dart';
import '/components_2/social_account/social_account_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'account_widget.dart' show AccountWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AccountModel extends FlutterFlowModel<AccountWidget> {
  ///  Local state fields for this page.

  String? activeTab = 'Profile';

  String method = 'Credit/Debit/ATM Card';

  ///  State fields for stateful widgets in this page.

  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  late bool passwordVisibility3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for Point_Text component.
  late PointTextModel pointTextModel1;
  // Model for Point_Text component.
  late PointTextModel pointTextModel2;
  // Model for Point_Text component.
  late PointTextModel pointTextModel3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered9 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered10 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Model for Server_Key component.
  late ServerKeyModel serverKeyModel1;
  // Model for Server_Key component.
  late ServerKeyModel serverKeyModel2;
  // Model for Server_Key component.
  late ServerKeyModel serverKeyModel3;
  // Model for RecentDevices component.
  late RecentDevicesModel recentDevicesModel1;
  // Model for RecentDevices component.
  late RecentDevicesModel recentDevicesModel2;
  // Model for RecentDevices component.
  late RecentDevicesModel recentDevicesModel3;
  // Model for RecentDevices component.
  late RecentDevicesModel recentDevicesModel4;
  // Model for RecentDevices component.
  late RecentDevicesModel recentDevicesModel5;
  // Model for RecentDevices component.
  late RecentDevicesModel recentDevicesModel6;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered11 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered12 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered13 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered14 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // Model for Custom_Switch component.
  late CustomSwitchModel customSwitchModel;
  // Model for Payment_Card component.
  late PaymentCardModel paymentCardModel1;
  // Model for Payment_Card component.
  late PaymentCardModel paymentCardModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered15 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered16 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered17 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered18 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode12;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered19 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode13;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered20 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered21 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode14;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered22 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode15;
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered23 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode16;
  TextEditingController? textController16;
  String? Function(BuildContext, String?)? textController16Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered24 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered25 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode17;
  TextEditingController? textController17;
  String? Function(BuildContext, String?)? textController17Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered26 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
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
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for Checkbox widget.
  bool? checkboxValue8;
  // State field(s) for Checkbox widget.
  bool? checkboxValue9;
  // State field(s) for Checkbox widget.
  bool? checkboxValue10;
  // State field(s) for Checkbox widget.
  bool? checkboxValue11;
  // State field(s) for Checkbox widget.
  bool? checkboxValue12;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered27 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // Model for Accounts component.
  late AccountsModel accountsModel1;
  // Model for Accounts component.
  late AccountsModel accountsModel2;
  // Model for Accounts component.
  late AccountsModel accountsModel3;
  // Model for Accounts component.
  late AccountsModel accountsModel4;
  // Model for Accounts component.
  late AccountsModel accountsModel5;
  // Model for Social_Account component.
  late SocialAccountModel socialAccountModel1;
  // Model for Social_Account component.
  late SocialAccountModel socialAccountModel2;
  // Model for Social_Account component.
  late SocialAccountModel socialAccountModel3;
  // Model for Social_Account component.
  late SocialAccountModel socialAccountModel4;
  // Model for Social_Account component.
  late SocialAccountModel socialAccountModel5;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered28 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode18;
  TextEditingController? textController18;
  String? Function(BuildContext, String?)? textController18Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered29 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode19;
  TextEditingController? textController19;
  String? Function(BuildContext, String?)? textController19Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered30 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode20;
  TextEditingController? textController20;
  String? Function(BuildContext, String?)? textController20Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered31 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode21;
  TextEditingController? textController21;
  String? Function(BuildContext, String?)? textController21Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered32 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode22;
  TextEditingController? textController22;
  String? Function(BuildContext, String?)? textController22Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered33 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode23;
  TextEditingController? textController23;
  String? Function(BuildContext, String?)? textController23Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered34 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode24;
  TextEditingController? textController24;
  String? Function(BuildContext, String?)? textController24Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered35 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode25;
  TextEditingController? textController25;
  String? Function(BuildContext, String?)? textController25Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered36 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered37 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue7;
  FormFieldController<String>? dropDownValueController7;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered38 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue8;
  FormFieldController<String>? dropDownValueController8;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered39 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue9;
  FormFieldController<String>? dropDownValueController9;
  // State field(s) for Checkbox widget.
  bool? checkboxValue13;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    passwordVisibility1 = false;
    passwordVisibility2 = false;
    passwordVisibility3 = false;
    pointTextModel1 = createModel(context, () => PointTextModel());
    pointTextModel2 = createModel(context, () => PointTextModel());
    pointTextModel3 = createModel(context, () => PointTextModel());
    serverKeyModel1 = createModel(context, () => ServerKeyModel());
    serverKeyModel2 = createModel(context, () => ServerKeyModel());
    serverKeyModel3 = createModel(context, () => ServerKeyModel());
    recentDevicesModel1 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel2 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel3 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel4 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel5 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel6 = createModel(context, () => RecentDevicesModel());
    statusCardModel = createModel(context, () => StatusCardModel());
    customSwitchModel = createModel(context, () => CustomSwitchModel());
    paymentCardModel1 = createModel(context, () => PaymentCardModel());
    paymentCardModel2 = createModel(context, () => PaymentCardModel());
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
    accountsModel1 = createModel(context, () => AccountsModel());
    accountsModel2 = createModel(context, () => AccountsModel());
    accountsModel3 = createModel(context, () => AccountsModel());
    accountsModel4 = createModel(context, () => AccountsModel());
    accountsModel5 = createModel(context, () => AccountsModel());
    socialAccountModel1 = createModel(context, () => SocialAccountModel());
    socialAccountModel2 = createModel(context, () => SocialAccountModel());
    socialAccountModel3 = createModel(context, () => SocialAccountModel());
    socialAccountModel4 = createModel(context, () => SocialAccountModel());
    socialAccountModel5 = createModel(context, () => SocialAccountModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    pointTextModel1.dispose();
    pointTextModel2.dispose();
    pointTextModel3.dispose();
    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    serverKeyModel1.dispose();
    serverKeyModel2.dispose();
    serverKeyModel3.dispose();
    recentDevicesModel1.dispose();
    recentDevicesModel2.dispose();
    recentDevicesModel3.dispose();
    recentDevicesModel4.dispose();
    recentDevicesModel5.dispose();
    recentDevicesModel6.dispose();
    statusCardModel.dispose();
    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    textFieldFocusNode8?.dispose();
    textController8?.dispose();

    customSwitchModel.dispose();
    paymentCardModel1.dispose();
    paymentCardModel2.dispose();
    textFieldFocusNode9?.dispose();
    textController9?.dispose();

    textFieldFocusNode10?.dispose();
    textController10?.dispose();

    textFieldFocusNode11?.dispose();
    textController11?.dispose();

    textFieldFocusNode12?.dispose();
    textController12?.dispose();

    textFieldFocusNode13?.dispose();
    textController13?.dispose();

    textFieldFocusNode14?.dispose();
    textController14?.dispose();

    textFieldFocusNode15?.dispose();
    textController15?.dispose();

    textFieldFocusNode16?.dispose();
    textController16?.dispose();

    textFieldFocusNode17?.dispose();
    textController17?.dispose();

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
    accountsModel1.dispose();
    accountsModel2.dispose();
    accountsModel3.dispose();
    accountsModel4.dispose();
    accountsModel5.dispose();
    socialAccountModel1.dispose();
    socialAccountModel2.dispose();
    socialAccountModel3.dispose();
    socialAccountModel4.dispose();
    socialAccountModel5.dispose();
    textFieldFocusNode18?.dispose();
    textController18?.dispose();

    textFieldFocusNode19?.dispose();
    textController19?.dispose();

    textFieldFocusNode20?.dispose();
    textController20?.dispose();

    textFieldFocusNode21?.dispose();
    textController21?.dispose();

    textFieldFocusNode22?.dispose();
    textController22?.dispose();

    textFieldFocusNode23?.dispose();
    textController23?.dispose();

    textFieldFocusNode24?.dispose();
    textController24?.dispose();

    textFieldFocusNode25?.dispose();
    textController25?.dispose();

    footerModel.dispose();
    searchBarModel.dispose();
  }
}

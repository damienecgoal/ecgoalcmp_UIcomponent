import '/auth/base_auth_user_provider.dart';
import '/components/accounts/accounts_widget.dart';
import '/components/avatar_name/avatar_name_widget.dart';
import '/components/edit_popup/add_new_address/add_new_address_widget.dart';
import '/components/edit_popup/add_new_card/add_new_card_widget.dart';
import '/components/edit_popup/edit_user_information/edit_user_information_widget.dart';
import '/components/edit_popup/one_time_password/one_time_password_widget.dart';
import '/components/edit_popup/upgrade_plan/upgrade_plan_widget.dart';
import '/components/list/payment_card/payment_card_widget.dart';
import '/components/list/recent_devices/recent_devices_widget.dart';
import '/components/list/user_issued_card/user_issued_card_widget.dart';
import '/components/list/user_projects_list/user_projects_list_widget.dart';
import '/components/nodal/export_nodal/export_nodal_widget.dart';
import '/components/popup/warning_popup/warning_popup_widget.dart';
import '/components_2/customer_status/customer_status_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/list_header/list_header_widget.dart';
import '/components_2/list_header2/list_header2_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/social_account/social_account_widget.dart';
import '/components_2/stake_images/stake_images_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'users_account_widget.dart' show UsersAccountWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class UsersAccountModel extends FlutterFlowModel<UsersAccountWidget> {
  ///  Local state fields for this page.

  String? activeTab = 'Account';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel1;
  // Model for Customer_Status component.
  late CustomerStatusModel customerStatusModel1;
  // Model for Customer_Status component.
  late CustomerStatusModel customerStatusModel2;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel2;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel3;
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
  late StatusCardModel statusCardModel4;
  // Model for Payment_Card component.
  late PaymentCardModel paymentCardModel1;
  // Model for Payment_Card component.
  late PaymentCardModel paymentCardModel2;
  // Model for Payment_Card component.
  late PaymentCardModel paymentCardModel3;
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
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel1;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel2;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel3;
  // Model for ListHeader2 component.
  late ListHeader2Model listHeader2Model1;
  // Model for UserProjects_List component.
  late UserProjectsListModel userProjectsListModel1;
  // Model for UserProjects_List component.
  late UserProjectsListModel userProjectsListModel2;
  // Model for UserProjects_List component.
  late UserProjectsListModel userProjectsListModel3;
  // Model for UserProjects_List component.
  late UserProjectsListModel userProjectsListModel4;
  // Model for UserProjects_List component.
  late UserProjectsListModel userProjectsListModel5;
  // Model for UserProjects_List component.
  late UserProjectsListModel userProjectsListModel6;
  // Model for UserProjects_List component.
  late UserProjectsListModel userProjectsListModel7;
  // Model for AvatarName component.
  late AvatarNameModel avatarNameModel;
  // Model for Stake_Images component.
  late StakeImagesModel stakeImagesModel;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel4;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel5;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel6;
  // Model for ListHeader2 component.
  late ListHeader2Model listHeader2Model2;
  // Model for UserIssued_Card component.
  late UserIssuedCardModel userIssuedCardModel1;
  // Model for UserIssued_Card component.
  late UserIssuedCardModel userIssuedCardModel2;
  // Model for UserIssued_Card component.
  late UserIssuedCardModel userIssuedCardModel3;
  // Model for UserIssued_Card component.
  late UserIssuedCardModel userIssuedCardModel4;
  // Model for UserIssued_Card component.
  late UserIssuedCardModel userIssuedCardModel5;
  // Model for UserIssued_Card component.
  late UserIssuedCardModel userIssuedCardModel6;
  // Model for UserIssued_Card component.
  late UserIssuedCardModel userIssuedCardModel7;
  // Model for UserIssued_Card component.
  late UserIssuedCardModel userIssuedCardModel8;
  // Model for UserIssued_Card component.
  late UserIssuedCardModel userIssuedCardModel9;
  // Model for UserIssued_Card component.
  late UserIssuedCardModel userIssuedCardModel10;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    statusCardModel1 = createModel(context, () => StatusCardModel());
    customerStatusModel1 = createModel(context, () => CustomerStatusModel());
    customerStatusModel2 = createModel(context, () => CustomerStatusModel());
    statusCardModel2 = createModel(context, () => StatusCardModel());
    statusCardModel3 = createModel(context, () => StatusCardModel());
    passwordVisibility1 = false;
    passwordVisibility2 = false;
    recentDevicesModel1 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel2 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel3 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel4 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel5 = createModel(context, () => RecentDevicesModel());
    recentDevicesModel6 = createModel(context, () => RecentDevicesModel());
    statusCardModel4 = createModel(context, () => StatusCardModel());
    paymentCardModel1 = createModel(context, () => PaymentCardModel());
    paymentCardModel2 = createModel(context, () => PaymentCardModel());
    paymentCardModel3 = createModel(context, () => PaymentCardModel());
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
    listHeaderModel1 = createModel(context, () => ListHeaderModel());
    listHeaderModel2 = createModel(context, () => ListHeaderModel());
    listHeaderModel3 = createModel(context, () => ListHeaderModel());
    listHeader2Model1 = createModel(context, () => ListHeader2Model());
    userProjectsListModel1 =
        createModel(context, () => UserProjectsListModel());
    userProjectsListModel2 =
        createModel(context, () => UserProjectsListModel());
    userProjectsListModel3 =
        createModel(context, () => UserProjectsListModel());
    userProjectsListModel4 =
        createModel(context, () => UserProjectsListModel());
    userProjectsListModel5 =
        createModel(context, () => UserProjectsListModel());
    userProjectsListModel6 =
        createModel(context, () => UserProjectsListModel());
    userProjectsListModel7 =
        createModel(context, () => UserProjectsListModel());
    avatarNameModel = createModel(context, () => AvatarNameModel());
    stakeImagesModel = createModel(context, () => StakeImagesModel());
    listHeaderModel4 = createModel(context, () => ListHeaderModel());
    listHeaderModel5 = createModel(context, () => ListHeaderModel());
    listHeaderModel6 = createModel(context, () => ListHeaderModel());
    listHeader2Model2 = createModel(context, () => ListHeader2Model());
    userIssuedCardModel1 = createModel(context, () => UserIssuedCardModel());
    userIssuedCardModel2 = createModel(context, () => UserIssuedCardModel());
    userIssuedCardModel3 = createModel(context, () => UserIssuedCardModel());
    userIssuedCardModel4 = createModel(context, () => UserIssuedCardModel());
    userIssuedCardModel5 = createModel(context, () => UserIssuedCardModel());
    userIssuedCardModel6 = createModel(context, () => UserIssuedCardModel());
    userIssuedCardModel7 = createModel(context, () => UserIssuedCardModel());
    userIssuedCardModel8 = createModel(context, () => UserIssuedCardModel());
    userIssuedCardModel9 = createModel(context, () => UserIssuedCardModel());
    userIssuedCardModel10 = createModel(context, () => UserIssuedCardModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    statusCardModel1.dispose();
    customerStatusModel1.dispose();
    customerStatusModel2.dispose();
    statusCardModel2.dispose();
    statusCardModel3.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    recentDevicesModel1.dispose();
    recentDevicesModel2.dispose();
    recentDevicesModel3.dispose();
    recentDevicesModel4.dispose();
    recentDevicesModel5.dispose();
    recentDevicesModel6.dispose();
    statusCardModel4.dispose();
    paymentCardModel1.dispose();
    paymentCardModel2.dispose();
    paymentCardModel3.dispose();
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
    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    listHeaderModel1.dispose();
    listHeaderModel2.dispose();
    listHeaderModel3.dispose();
    listHeader2Model1.dispose();
    userProjectsListModel1.dispose();
    userProjectsListModel2.dispose();
    userProjectsListModel3.dispose();
    userProjectsListModel4.dispose();
    userProjectsListModel5.dispose();
    userProjectsListModel6.dispose();
    userProjectsListModel7.dispose();
    avatarNameModel.dispose();
    stakeImagesModel.dispose();
    listHeaderModel4.dispose();
    listHeaderModel5.dispose();
    listHeaderModel6.dispose();
    listHeader2Model2.dispose();
    userIssuedCardModel1.dispose();
    userIssuedCardModel2.dispose();
    userIssuedCardModel3.dispose();
    userIssuedCardModel4.dispose();
    userIssuedCardModel5.dispose();
    userIssuedCardModel6.dispose();
    userIssuedCardModel7.dispose();
    userIssuedCardModel8.dispose();
    userIssuedCardModel9.dispose();
    userIssuedCardModel10.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

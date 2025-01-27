import '/auth/base_auth_user_provider.dart';
import '/components/list/referred_users/referred_users_widget.dart';
import '/components/nodal/export_nodal/export_nodal_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/referral/referral_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/use/use_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'referrals_widget.dart' show ReferralsWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ReferralsModel extends FlutterFlowModel<ReferralsWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for Referral component.
  late ReferralModel referralModel1;
  // Model for Referral component.
  late ReferralModel referralModel2;
  // Model for Referral component.
  late ReferralModel referralModel3;
  // Model for Referral component.
  late ReferralModel referralModel4;
  // Model for Use component.
  late UseModel useModel1;
  // Model for Use component.
  late UseModel useModel2;
  // Model for Use component.
  late UseModel useModel3;
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
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Referred_Users component.
  late ReferredUsersModel referredUsersModel1;
  // Model for Referred_Users component.
  late ReferredUsersModel referredUsersModel2;
  // Model for Referred_Users component.
  late ReferredUsersModel referredUsersModel3;
  // Model for Referred_Users component.
  late ReferredUsersModel referredUsersModel4;
  // Model for Referred_Users component.
  late ReferredUsersModel referredUsersModel5;
  // Model for Referred_Users component.
  late ReferredUsersModel referredUsersModel6;
  // Model for Referred_Users component.
  late ReferredUsersModel referredUsersModel7;
  // Model for Referred_Users component.
  late ReferredUsersModel referredUsersModel8;
  // Model for Referred_Users component.
  late ReferredUsersModel referredUsersModel9;
  // Model for Referred_Users component.
  late ReferredUsersModel referredUsersModel10;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    referralModel1 = createModel(context, () => ReferralModel());
    referralModel2 = createModel(context, () => ReferralModel());
    referralModel3 = createModel(context, () => ReferralModel());
    referralModel4 = createModel(context, () => ReferralModel());
    useModel1 = createModel(context, () => UseModel());
    useModel2 = createModel(context, () => UseModel());
    useModel3 = createModel(context, () => UseModel());
    referredUsersModel1 = createModel(context, () => ReferredUsersModel());
    referredUsersModel2 = createModel(context, () => ReferredUsersModel());
    referredUsersModel3 = createModel(context, () => ReferredUsersModel());
    referredUsersModel4 = createModel(context, () => ReferredUsersModel());
    referredUsersModel5 = createModel(context, () => ReferredUsersModel());
    referredUsersModel6 = createModel(context, () => ReferredUsersModel());
    referredUsersModel7 = createModel(context, () => ReferredUsersModel());
    referredUsersModel8 = createModel(context, () => ReferredUsersModel());
    referredUsersModel9 = createModel(context, () => ReferredUsersModel());
    referredUsersModel10 = createModel(context, () => ReferredUsersModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    referralModel1.dispose();
    referralModel2.dispose();
    referralModel3.dispose();
    referralModel4.dispose();
    useModel1.dispose();
    useModel2.dispose();
    useModel3.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    referredUsersModel1.dispose();
    referredUsersModel2.dispose();
    referredUsersModel3.dispose();
    referredUsersModel4.dispose();
    referredUsersModel5.dispose();
    referredUsersModel6.dispose();
    referredUsersModel7.dispose();
    referredUsersModel8.dispose();
    referredUsersModel9.dispose();
    referredUsersModel10.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

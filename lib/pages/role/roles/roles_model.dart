import '/auth/base_auth_user_provider.dart';
import '/components/edit_popup/edit_role/edit_role_widget.dart';
import '/components/list/role_card/role_card_widget.dart';
import '/components/list/user_list_card/user_list_card_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/list_header/list_header_widget.dart';
import '/components_2/list_header2/list_header2_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'roles_widget.dart' show RolesWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class RolesModel extends FlutterFlowModel<RolesWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for Role_Card component.
  late RoleCardModel roleCardModel1;
  // Model for Role_Card component.
  late RoleCardModel roleCardModel2;
  // Model for Role_Card component.
  late RoleCardModel roleCardModel3;
  // Model for Role_Card component.
  late RoleCardModel roleCardModel4;
  // Model for Role_Card component.
  late RoleCardModel roleCardModel5;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel1;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel2;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel3;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel4;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel5;
  // Model for ListHeader2 component.
  late ListHeader2Model listHeader2Model;
  // Model for UserList_Card component.
  late UserListCardModel userListCardModel1;
  // Model for UserList_Card component.
  late UserListCardModel userListCardModel2;
  // Model for UserList_Card component.
  late UserListCardModel userListCardModel3;
  // Model for UserList_Card component.
  late UserListCardModel userListCardModel4;
  // Model for UserList_Card component.
  late UserListCardModel userListCardModel5;
  // Model for UserList_Card component.
  late UserListCardModel userListCardModel6;
  // Model for UserList_Card component.
  late UserListCardModel userListCardModel7;
  // Model for UserList_Card component.
  late UserListCardModel userListCardModel8;
  // Model for UserList_Card component.
  late UserListCardModel userListCardModel9;
  // Model for UserList_Card component.
  late UserListCardModel userListCardModel10;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    roleCardModel1 = createModel(context, () => RoleCardModel());
    roleCardModel2 = createModel(context, () => RoleCardModel());
    roleCardModel3 = createModel(context, () => RoleCardModel());
    roleCardModel4 = createModel(context, () => RoleCardModel());
    roleCardModel5 = createModel(context, () => RoleCardModel());
    listHeaderModel1 = createModel(context, () => ListHeaderModel());
    listHeaderModel2 = createModel(context, () => ListHeaderModel());
    listHeaderModel3 = createModel(context, () => ListHeaderModel());
    listHeaderModel4 = createModel(context, () => ListHeaderModel());
    listHeaderModel5 = createModel(context, () => ListHeaderModel());
    listHeader2Model = createModel(context, () => ListHeader2Model());
    userListCardModel1 = createModel(context, () => UserListCardModel());
    userListCardModel2 = createModel(context, () => UserListCardModel());
    userListCardModel3 = createModel(context, () => UserListCardModel());
    userListCardModel4 = createModel(context, () => UserListCardModel());
    userListCardModel5 = createModel(context, () => UserListCardModel());
    userListCardModel6 = createModel(context, () => UserListCardModel());
    userListCardModel7 = createModel(context, () => UserListCardModel());
    userListCardModel8 = createModel(context, () => UserListCardModel());
    userListCardModel9 = createModel(context, () => UserListCardModel());
    userListCardModel10 = createModel(context, () => UserListCardModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    roleCardModel1.dispose();
    roleCardModel2.dispose();
    roleCardModel3.dispose();
    roleCardModel4.dispose();
    roleCardModel5.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    listHeaderModel1.dispose();
    listHeaderModel2.dispose();
    listHeaderModel3.dispose();
    listHeaderModel4.dispose();
    listHeaderModel5.dispose();
    listHeader2Model.dispose();
    userListCardModel1.dispose();
    userListCardModel2.dispose();
    userListCardModel3.dispose();
    userListCardModel4.dispose();
    userListCardModel5.dispose();
    userListCardModel6.dispose();
    userListCardModel7.dispose();
    userListCardModel8.dispose();
    userListCardModel9.dispose();
    userListCardModel10.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

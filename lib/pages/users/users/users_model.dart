import '/components/list/user_list_card/user_list_card_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/list_header/list_header_widget.dart';
import '/components_2/list_header2/list_header2_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/users_activity/users_activity_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'users_widget.dart' show UsersWidget;
import 'package:flutter/material.dart';

class UsersModel extends FlutterFlowModel<UsersWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for UsersActivity component.
  late UsersActivityModel usersActivityModel1;
  // Model for UsersActivity component.
  late UsersActivityModel usersActivityModel2;
  // Model for UsersActivity component.
  late UsersActivityModel usersActivityModel3;
  // Model for UsersActivity component.
  late UsersActivityModel usersActivityModel4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
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
    usersActivityModel1 = createModel(context, () => UsersActivityModel());
    usersActivityModel2 = createModel(context, () => UsersActivityModel());
    usersActivityModel3 = createModel(context, () => UsersActivityModel());
    usersActivityModel4 = createModel(context, () => UsersActivityModel());
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
    usersActivityModel1.dispose();
    usersActivityModel2.dispose();
    usersActivityModel3.dispose();
    usersActivityModel4.dispose();
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

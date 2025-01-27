import '/auth/base_auth_user_provider.dart';
import '/components/list/permissions_list/permissions_list_widget.dart';
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
import 'permissions_widget.dart' show PermissionsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PermissionsModel extends FlutterFlowModel<PermissionsWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel;
  // Model for ListHeader2 component.
  late ListHeader2Model listHeader2Model1;
  // Model for ListHeader2 component.
  late ListHeader2Model listHeader2Model2;
  // Model for ListHeader2 component.
  late ListHeader2Model listHeader2Model3;
  // Model for Permissions_List component.
  late PermissionsListModel permissionsListModel1;
  // Model for Permissions_List component.
  late PermissionsListModel permissionsListModel2;
  // Model for Permissions_List component.
  late PermissionsListModel permissionsListModel3;
  // Model for Permissions_List component.
  late PermissionsListModel permissionsListModel4;
  // Model for Permissions_List component.
  late PermissionsListModel permissionsListModel5;
  // Model for Permissions_List component.
  late PermissionsListModel permissionsListModel6;
  // Model for Permissions_List component.
  late PermissionsListModel permissionsListModel7;
  // Model for Permissions_List component.
  late PermissionsListModel permissionsListModel8;
  // Model for Permissions_List component.
  late PermissionsListModel permissionsListModel9;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    listHeaderModel = createModel(context, () => ListHeaderModel());
    listHeader2Model1 = createModel(context, () => ListHeader2Model());
    listHeader2Model2 = createModel(context, () => ListHeader2Model());
    listHeader2Model3 = createModel(context, () => ListHeader2Model());
    permissionsListModel1 = createModel(context, () => PermissionsListModel());
    permissionsListModel2 = createModel(context, () => PermissionsListModel());
    permissionsListModel3 = createModel(context, () => PermissionsListModel());
    permissionsListModel4 = createModel(context, () => PermissionsListModel());
    permissionsListModel5 = createModel(context, () => PermissionsListModel());
    permissionsListModel6 = createModel(context, () => PermissionsListModel());
    permissionsListModel7 = createModel(context, () => PermissionsListModel());
    permissionsListModel8 = createModel(context, () => PermissionsListModel());
    permissionsListModel9 = createModel(context, () => PermissionsListModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    listHeaderModel.dispose();
    listHeader2Model1.dispose();
    listHeader2Model2.dispose();
    listHeader2Model3.dispose();
    permissionsListModel1.dispose();
    permissionsListModel2.dispose();
    permissionsListModel3.dispose();
    permissionsListModel4.dispose();
    permissionsListModel5.dispose();
    permissionsListModel6.dispose();
    permissionsListModel7.dispose();
    permissionsListModel8.dispose();
    permissionsListModel9.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}

import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/avatar_2/avatar2_widget.dart';
import '/components/nodal/profile_nodal/profile_nodal_widget.dart';
import '/components_2/avatar/avatar_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'chat_widget.dart' show ChatWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  Local state fields for this page.

  UserStruct? selectedContact;
  void updateSelectedContactStruct(Function(UserStruct) updateFn) {
    updateFn(selectedContact ??= UserStruct());
  }

  String contact = 'Felecia Rower';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for Avatar component.
  late AvatarModel avatarModel1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for Avatar component.
  late AvatarModel avatarModel2;
  // Model for Avatar component.
  late AvatarModel avatarModel3;
  // Model for Avatar component.
  late AvatarModel avatarModel4;
  // Model for Avatar component.
  late AvatarModel avatarModel5;
  // Model for Avatar component.
  late AvatarModel avatarModel6;
  // Model for Avatar component.
  late AvatarModel avatarModel7;
  // Model for Avatar component.
  late AvatarModel avatarModel8;
  // Model for Avatar component.
  late AvatarModel avatarModel9;
  // Model for Avatar component.
  late AvatarModel avatarModel10;
  // Model for Avatar component.
  late AvatarModel avatarModel11;
  // Model for Avatar component.
  late AvatarModel avatarModel12;
  // Model for Avatar component.
  late AvatarModel avatarModel13;
  // Model for Avatar component.
  late AvatarModel avatarModel14;
  // Model for Avatar component.
  late AvatarModel avatarModel15;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model1;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model2;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model3;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model4;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model5;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model6;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model7;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model8;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model9;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model10;
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
    avatarModel1 = createModel(context, () => AvatarModel());
    avatarModel2 = createModel(context, () => AvatarModel());
    avatarModel3 = createModel(context, () => AvatarModel());
    avatarModel4 = createModel(context, () => AvatarModel());
    avatarModel5 = createModel(context, () => AvatarModel());
    avatarModel6 = createModel(context, () => AvatarModel());
    avatarModel7 = createModel(context, () => AvatarModel());
    avatarModel8 = createModel(context, () => AvatarModel());
    avatarModel9 = createModel(context, () => AvatarModel());
    avatarModel10 = createModel(context, () => AvatarModel());
    avatarModel11 = createModel(context, () => AvatarModel());
    avatarModel12 = createModel(context, () => AvatarModel());
    avatarModel13 = createModel(context, () => AvatarModel());
    avatarModel14 = createModel(context, () => AvatarModel());
    avatarModel15 = createModel(context, () => AvatarModel());
    avatar2Model1 = createModel(context, () => Avatar2Model());
    avatar2Model2 = createModel(context, () => Avatar2Model());
    avatar2Model3 = createModel(context, () => Avatar2Model());
    avatar2Model4 = createModel(context, () => Avatar2Model());
    avatar2Model5 = createModel(context, () => Avatar2Model());
    avatar2Model6 = createModel(context, () => Avatar2Model());
    avatar2Model7 = createModel(context, () => Avatar2Model());
    avatar2Model8 = createModel(context, () => Avatar2Model());
    avatar2Model9 = createModel(context, () => Avatar2Model());
    avatar2Model10 = createModel(context, () => Avatar2Model());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    avatarModel1.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    avatarModel2.dispose();
    avatarModel3.dispose();
    avatarModel4.dispose();
    avatarModel5.dispose();
    avatarModel6.dispose();
    avatarModel7.dispose();
    avatarModel8.dispose();
    avatarModel9.dispose();
    avatarModel10.dispose();
    avatarModel11.dispose();
    avatarModel12.dispose();
    avatarModel13.dispose();
    avatarModel14.dispose();
    avatarModel15.dispose();
    avatar2Model1.dispose();
    avatar2Model2.dispose();
    avatar2Model3.dispose();
    avatar2Model4.dispose();
    avatar2Model5.dispose();
    avatar2Model6.dispose();
    avatar2Model7.dispose();
    avatar2Model8.dispose();
    avatar2Model9.dispose();
    avatar2Model10.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    footerModel.dispose();
    searchBarModel.dispose();
  }
}

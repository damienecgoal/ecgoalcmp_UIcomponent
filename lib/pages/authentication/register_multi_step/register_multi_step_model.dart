import '/components_2/multi_step_account/multi_step_account_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register_multi_step_widget.dart' show RegisterMultiStepWidget;
import 'package:flutter/material.dart';

class RegisterMultiStepModel extends FlutterFlowModel<RegisterMultiStepWidget> {
  ///  Local state fields for this page.

  String selectedTab = 'Account';

  String plan = 'Standard';

  ///  State fields for stateful widgets in this page.

  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for MultiStep_Account component.
  late MultiStepAccountModel multiStepAccountModel1;
  // Model for MultiStep_Account component.
  late MultiStepAccountModel multiStepAccountModel2;
  // Model for MultiStep_Account component.
  late MultiStepAccountModel multiStepAccountModel3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode1;
  TextEditingController? usernameTextController1;
  String? Function(BuildContext, String?)? usernameTextController1Validator;
  String? _usernameTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a username';
    }

    return null;
  }

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode2;
  TextEditingController? usernameTextController2;
  String? Function(BuildContext, String?)? usernameTextController2Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode3;
  TextEditingController? usernameTextController3;
  String? Function(BuildContext, String?)? usernameTextController3Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode4;
  TextEditingController? usernameTextController4;
  String? Function(BuildContext, String?)? usernameTextController4Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode5;
  TextEditingController? usernameTextController5;
  String? Function(BuildContext, String?)? usernameTextController5Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // State field(s) for Username widget.
  String? usernameValue;
  FormFieldController<String>? usernameValueController;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered9 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered10 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered11 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered12 = false;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode3;
  TextEditingController? passwordTextController3;
  String? Function(BuildContext, String?)? passwordTextController3Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered13 = false;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode6;
  TextEditingController? usernameTextController6;
  String? Function(BuildContext, String?)? usernameTextController6Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered14 = false;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode7;
  TextEditingController? usernameTextController7;
  String? Function(BuildContext, String?)? usernameTextController7Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered15 = false;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode8;
  TextEditingController? usernameTextController8;
  String? Function(BuildContext, String?)? usernameTextController8Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered16 = false;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode9;
  TextEditingController? usernameTextController9;
  String? Function(BuildContext, String?)? usernameTextController9Validator;
  String? _usernameTextController9Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a username';
    }

    return null;
  }

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered17 = false;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode10;
  TextEditingController? usernameTextController10;
  String? Function(BuildContext, String?)? usernameTextController10Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered18 = false;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode11;
  TextEditingController? usernameTextController11;
  late bool usernameVisibility1;
  String? Function(BuildContext, String?)? usernameTextController11Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered19 = false;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode12;
  TextEditingController? usernameTextController12;
  late bool usernameVisibility2;
  String? Function(BuildContext, String?)? usernameTextController12Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered20 = false;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode4;
  TextEditingController? passwordTextController4;
  String? Function(BuildContext, String?)? passwordTextController4Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered21 = false;

  @override
  void initState(BuildContext context) {
    multiStepAccountModel1 =
        createModel(context, () => MultiStepAccountModel());
    multiStepAccountModel2 =
        createModel(context, () => MultiStepAccountModel());
    multiStepAccountModel3 =
        createModel(context, () => MultiStepAccountModel());
    usernameTextController1Validator = _usernameTextController1Validator;
    usernameTextController9Validator = _usernameTextController9Validator;
    usernameVisibility1 = false;
    usernameVisibility2 = false;
  }

  @override
  void dispose() {
    multiStepAccountModel1.dispose();
    multiStepAccountModel2.dispose();
    multiStepAccountModel3.dispose();
    usernameFocusNode1?.dispose();
    usernameTextController1?.dispose();

    usernameFocusNode2?.dispose();
    usernameTextController2?.dispose();

    usernameFocusNode3?.dispose();
    usernameTextController3?.dispose();

    usernameFocusNode4?.dispose();
    usernameTextController4?.dispose();

    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();

    usernameFocusNode5?.dispose();
    usernameTextController5?.dispose();

    passwordFocusNode3?.dispose();
    passwordTextController3?.dispose();

    usernameFocusNode6?.dispose();
    usernameTextController6?.dispose();

    usernameFocusNode7?.dispose();
    usernameTextController7?.dispose();

    usernameFocusNode8?.dispose();
    usernameTextController8?.dispose();

    usernameFocusNode9?.dispose();
    usernameTextController9?.dispose();

    usernameFocusNode10?.dispose();
    usernameTextController10?.dispose();

    usernameFocusNode11?.dispose();
    usernameTextController11?.dispose();

    usernameFocusNode12?.dispose();
    usernameTextController12?.dispose();

    passwordFocusNode4?.dispose();
    passwordTextController4?.dispose();
  }
}

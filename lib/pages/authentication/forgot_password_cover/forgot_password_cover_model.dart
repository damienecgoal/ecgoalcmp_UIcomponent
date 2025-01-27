import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password_cover_widget.dart' show ForgotPasswordCoverWidget;
import 'package:flutter/material.dart';

class ForgotPasswordCoverModel
    extends FlutterFlowModel<ForgotPasswordCoverWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter password';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}

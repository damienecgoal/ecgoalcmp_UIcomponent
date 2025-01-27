import '/flutter_flow/flutter_flow_util.dart';
import 'tow_step_verification_widget.dart' show TowStepVerificationWidget;
import 'package:flutter/material.dart';

class TowStepVerificationModel
    extends FlutterFlowModel<TowStepVerificationWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}

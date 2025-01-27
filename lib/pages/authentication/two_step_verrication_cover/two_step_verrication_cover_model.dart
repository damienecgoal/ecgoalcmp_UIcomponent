import '/flutter_flow/flutter_flow_util.dart';
import 'two_step_verrication_cover_widget.dart'
    show TwoStepVerricationCoverWidget;
import 'package:flutter/material.dart';

class TwoStepVerricationCoverModel
    extends FlutterFlowModel<TwoStepVerricationCoverWidget> {
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

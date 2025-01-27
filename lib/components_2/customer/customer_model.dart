import '/components/avatar_2/avatar2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'customer_widget.dart' show CustomerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomerModel extends FlutterFlowModel<CustomerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model;

  @override
  void initState(BuildContext context) {
    avatar2Model = createModel(context, () => Avatar2Model());
  }

  @override
  void dispose() {
    avatar2Model.dispose();
  }
}

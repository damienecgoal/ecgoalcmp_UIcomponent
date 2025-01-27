import '/components/avatar_2/avatar2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'message_widget.dart' show MessageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MessageModel extends FlutterFlowModel<MessageWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
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

import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'avatar2_widget.dart' show Avatar2Widget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Avatar2Model extends FlutterFlowModel<Avatar2Widget> {
  ///  Local state fields for this component.

  ColorStruct? color;
  void updateColorStruct(Function(ColorStruct) updateFn) {
    updateFn(color ??= ColorStruct());
  }

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

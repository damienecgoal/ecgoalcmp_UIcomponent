import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'avatar2_widget.dart' show Avatar2Widget;
import 'package:flutter/material.dart';

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

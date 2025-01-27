import '/components/avatar_2/avatar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'avatar_name_widget.dart' show AvatarNameWidget;
import 'package:flutter/material.dart';

class AvatarNameModel extends FlutterFlowModel<AvatarNameWidget> {
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

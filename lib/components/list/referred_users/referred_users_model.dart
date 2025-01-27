import '/components/avatar_2/avatar2_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'referred_users_widget.dart' show ReferredUsersWidget;
import 'package:flutter/material.dart';

class ReferredUsersModel extends FlutterFlowModel<ReferredUsersWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;

  @override
  void initState(BuildContext context) {
    avatar2Model = createModel(context, () => Avatar2Model());
    statusCardModel = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    avatar2Model.dispose();
    statusCardModel.dispose();
  }
}

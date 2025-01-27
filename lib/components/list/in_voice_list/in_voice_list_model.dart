import '/components/avatar_2/avatar2_widget.dart';
import '/components_2/icon_container_circle/icon_container_circle_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'in_voice_list_widget.dart' show InVoiceListWidget;
import 'package:flutter/material.dart';

class InVoiceListModel extends FlutterFlowModel<InVoiceListWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IconContainerCircle component.
  late IconContainerCircleModel iconContainerCircleModel;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;

  @override
  void initState(BuildContext context) {
    iconContainerCircleModel =
        createModel(context, () => IconContainerCircleModel());
    avatar2Model = createModel(context, () => Avatar2Model());
    statusCardModel = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    iconContainerCircleModel.dispose();
    avatar2Model.dispose();
    statusCardModel.dispose();
  }
}
